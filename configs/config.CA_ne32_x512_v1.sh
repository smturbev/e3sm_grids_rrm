#!/bin/bash
atm_grid_name=CA_ne32_x512_v1

# important local directories (machine specific)
tempest_root=${HOME}/e3sm_grids_rrm/tempestremap
output_root=/tscratch/smturbe/e3sm_grids/${atm_grid_name}
inputdata_root=/projects/ccsm/inputdata 
e3sm_root=${HOME}/codes/e3sm/cirrus-cloud-thinning #fix-mkmapdata #${HOME}/codes/e3sm/branches/master

# mapping grids
atm_mesh_file=${output_root}/${atm_grid_name}pg2.g
atm_scrip_file=${output_root}/${atm_grid_name}pg2_scrip.nc
ocn_grid_name=ICOS10
ocn_scrip_file=/projects/ccsm/inputdata/ocn/mpas-o/${ocn_grid_name}/ocean.ICOS10.scrip.211015.nc
lnd_grid_name=r0125
lnd_scrip_file=${inputdata_root}/lnd/clm2/mappingdata/grids/MOSART_global_8th.scrip.20180211c.nc

# Machine and compiler will be used in some of the scripts to get proper environment
machine="flight" #"cori-knl"
compiler="intel" #"ifort"
