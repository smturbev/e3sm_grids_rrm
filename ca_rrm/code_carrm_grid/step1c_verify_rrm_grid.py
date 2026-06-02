#!/ascldap/users/smturbe/.conda/envs/smt_e3sm/bin/python
# Verifies the new RRM grid generated in step 1

import os
from os.path import splitext, basename
from matplotlib import pyplot as plt, patches
from cartopy import crs
from xarray import open_dataset
import sys
sys.path.append('/ascldap/users/smturbe/e3smplot/e3smplot/mpl')
print(sys.path)
import plot_exodus as e3smplot
# from e3smplot.e3smplot.mpl.plot_exodus import plot_exodus
print(e3smplot)

meshes = [
    '/tscratch/smturbe/e3sm_grids/ne32/2026_screamv1_CA32x8.g',
    # '/tscratch/smturbe/e3sm_grids/ne32/2026_screamv1_CA32x16.g'
    # add other meshes here for comparison
]
refined_mesh = meshes[0]
print(refined_mesh)
os.makedirs('plots', exist_ok=True)
# for refined_mesh in meshes:
ds2 = open_dataset(refined_mesh, engine="netcdf4")
figure = plt.figure(figsize=(20, 10))
ax = figure.add_subplot(111, projection=crs.PlateCarree())
ax.stock_img()
ax.coastlines()
ax.set_global()
extent = (-125, -90, 30, 46)
ax.set_extent(extent)
ax.set_title(f'number of elements: {ds2.dims["num_elem"]}')
pl = e3smplot.plot_exodus(ds2, ax=ax, verbose=True, linewidth=0.2)
figure.savefig(f'plots/{basename(splitext(refined_mesh)[0])}.pdf', bbox_inches='tight')
figure.savefig(f'plots/{basename(splitext(refined_mesh)[0])}.png', bbox_inches='tight')
