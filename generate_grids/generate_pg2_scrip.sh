#!/bin/bash
# See:
# https://acme-climate.atlassian.net/wiki/spaces/ED/pages/1043235115/Special+Considerations+for+FV+Physics+Grids

if [ $# -eq 1 ]; then
    source $1
else
    echo "usage: `basename $0` <machine config>"
    echo "config file should be in ../config/config.{atm_grid_name}.sh"
    echo "with atm_grid_name and output_root defined in that config file"
    exit 1
fi

# Convert input mesh to SCRIP format
datestring=`date +%Y%m%d`
in_mesh=${atm_mesh_file}  # should be of the form <atm_grid_name>pg2.g
out_mesh=${atm_scrip_file}  # should be of the form <atm_grid_name>pg2_scrip.nc
if [ -e ${out_mesh} ]; then
    echo "${out_mesh} exists; skipping."
    exit 0
else
    ConvertMeshToSCRIP --in ${in_mesh} --out ${out_mesh}
fi

# Make sure grid_imask has type int and convert to cdf5 format
ncap2 -5 -O -s "grid_imask = int(grid_imask)" ${out_mesh} ${out_mesh}
