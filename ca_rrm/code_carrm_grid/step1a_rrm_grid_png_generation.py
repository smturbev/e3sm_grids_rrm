#!/ascldap/users/smturbe/.conda/envs/smt_met/bin/python
# Generates a png file to be used for creating a new RRM mesh
# This file is from https://docs.e3sm.org/E3SM/dev-guide/adding-grid-support/adding-grid-support-step-by-step-guide/generate-RRM-grid-file/#creating-the-png-file-with-a-python-script

import os, ngl, numpy as np, xarray as xr
target_lat, target_lon = 39.7392, 360-104.9903 # Denver, CO
#-------------------------------------------------------------------------------
scrip_ds = xr.open_dataset(os.getenv('HOME')+'/E3SM/data_grid/ne30pg2_scrip.nc')
ncol = len(scrip_ds['grid_area'])
deg_to_rad,rad_to_deg = np.pi/180., 180./np.pi
#-------------------------------------------------------------------------------
# method for calculating the length of great circle arcs
def calc_great_circle_distance(lat1,lat2,lon1,lon2):
  ''' input should be in degrees '''
  dlon = lon2 - lon1
  cos_dist = np.sin(lat1*deg_to_rad)*np.sin(lat2*deg_to_rad) + \
             np.cos(lat1*deg_to_rad)*np.cos(lat2*deg_to_rad)*np.cos(dlon*deg_to_rad)
  # print( str(cos_dist.min()) +"   "+ str(cos_dist.max()) )
  cos_dist = np.where(cos_dist> 1.0, 1.0,cos_dist)
  cos_dist = np.where(cos_dist<-1.0,-1.0,cos_dist)
  dist = np.arccos( cos_dist )
  return dist
#-------------------------------------------------------------------------------
# method for defining a feathered refinement region
def define_refinement( ncol, dmin, dmax,
                      target_lat, target_lon,
                      center_lat, center_lon,
                      refine_level):
  # loop through all points and calculate distance to center
  # NOTE - distance units are in radians (max value = pi)
  for n in range(ncol):
    d = calc_great_circle_distance(target_lat, center_lat[n] ,target_lon, center_lon[n])
    if d<=dmin:            refine_level[n] = 1
    if d>dmin and d<=dmax: refine_level[n] = ( dmax - d ) / ( dmax - dmin )
    if d>dmax:             refine_level[n] = 0
  return refine_level
#-------------------------------------------------------------------------------
# define refinement regions - distance thesholds in radians
min_threshold =  1*deg_to_rad
max_threshold = 10*deg_to_rad
refine_level = np.zeros(ncol)
# define continuous refinement based on distance
define_refinement( ncol, min_threshold, max_threshold,
                 target_lat, target_lon,
                 scrip_ds['grid_center_lat'].values,
                 scrip_ds['grid_center_lon'].values,
                 refine_level )
#-------------------------------------------------------------------------------
# create PNG image using PyNGL
wkres = ngl.Resources()
npix = 4096; wkres.wkWidth,wkres.wkHeight=npix,npix
wkres.wkForegroundColor = [1.,1.,1.]
wkres.wkBackgroundColor = [1.,1.,1.]
wks = ngl.open_wks('png',fig_file,wkres)
# Create custom colormap
num_clr = 50
fill_clr = np.zeros((num_clr,3))
for n in range(num_clr): fill_clr[n,:] = float(n) / float(num_clr)
# define plot resources
res = ngl.Resources()
res.nglDraw               = False
res.nglFrame              = False
res.tmXTOn                = False
res.tmXBOn                = False
res.tmYLOn                = False
res.tmYROn                = False
res.cnFillOn              = True
res.cnLinesOn             = False
res.cnLineLabelsOn        = False
res.cnInfoLabelOn         = False
res.mpGridAndLimbOn       = False
res.mpPerimOn             = False
res.mpOutlineBoundarySets = 'NoBoundaries'
res.lbLabelBarOn          = False
res.cnFillPalette         = fill_clr
res.tfPolyDrawOrder = 'PreDraw'
res.sfXArray      = scrip_ds['grid_center_lon'].values
res.sfYArray      = scrip_ds['grid_center_lat'].values
#-------------------------------------------------------------------------------
# Use Raster fill mode instead of cell fill
res.cnFillMode          = 'RasterFill'
plot = ngl.contour_map(wks,refine_level,res)
#-------------------------------------------------------------------------------
# use pre-draw polygon to fill in white areas near poles
#-------------------------------------------------------------------------------
gsres             = ngl.Resources()
gsres.gsFillColor = 'black'
gsres.gsEdgesOn   = False
py = [ -89.9,  89.9, 89.9,-89.9, -89.9]
px = [ 360. , 360. ,  0. ,  0. , 360. ]
ngl.polygon(wks, plot, px, py, gsres)
#-------------------------------------------------------------------------------
ngl.draw(plot)
ngl.frame(wks)
ngl.end()
#-------------------------------------------------------------------------------
# crop white space from png file
if os.path.isfile(f'{fig_file}.png') :
  cmd = f'convert -trim +repage {fig_file}.png {fig_file}.png'
  os.system(cmd)
  os.system(cmd) # second call helps remove gray lines at edge
  # if npix = 4096:
else:
  raise FileNotFoundError(f'\n{fig_file}.png does not exist?!\n')
#-------------------------------------------------------------------------------
# apply gaussian blur
from PIL import Image, ImageFilter
image = Image.open(f'{fig_file}.png')
for n in range(nsmooth): image = image.filter(ImageFilter.GaussianBlur(radius=6))
image = image.save(f'{fig_file}.png')
#-------------------------------------------------------------------------------
print(); print(f'  {fig_file}.png'); print()
#-------------------------------------------------------------------------------