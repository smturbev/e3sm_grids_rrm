#!/bin/bash

grid_name=ne4
output_root=/tscratch/smturbe/e3sm_grids/${grid_name}
e3sm_root=${HOME}/codes/e3sm/cirrus-cloud-thinning
mapping_root=${output_root}/mapping_files

inputdata_root=/projects/ccsm/inputdata
tempest_root=${HOME}/e3sm_grids_rrm/tempestremap
# mapdata_root=/projects/ccsm/mapping
# inputdata_root=/global/cfs/cdirs/e3sm/inputdata
# mapdata_root=/global/cfs/cdirs/e3sm/mapping

atm_grid_name=ne4np4
atm_resolution=4
atm_mesh_file=${output_root}/ne${atm_resolution}pg2.g
atm_scrip_file=${output_root}/ne${atm_resolution}pg2_scrip.nc

#ocn_grid_name=oRRS15to5
#ocn_scrip_file="/project/projectdirs/acme/inputdata/ocn/mpas-o/oRRS15to5/ocean.RRS.15-5km_scrip_151209.nc"
#ocn_grid_name=oRRS18to6v3
#ocn_scrip_file="${inputdata_root}/ocn/mpas-o/oRRS18to6v3/oRRS18to6v3.171116.nc"
ocn_grid_name=oQU480
ocn_scrip_file="${inputdata_root}/share/meshes/mpas/ocean/ocean.QU.480km.scrip.181106.nc"

lnd_grid_name=ne4np4