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

in_mesh=${output_root}/${grid_name}.g # of the form <grid_name>.g
out_mesh=${atm_mesh_file} # of the form <grid_name>pg2.g
echo "in_mesh ${in_mesh} out_mesh ${out_mesh}"

if [ -e ${out_mesh} ]; then
    echo "${out_mesh} exists; skipping."
    exit 0
else
    GenerateVolumetricMesh \
        --in ${in_mesh} \
        --out ${out_mesh} \
        --np 2 --uniform
fi
