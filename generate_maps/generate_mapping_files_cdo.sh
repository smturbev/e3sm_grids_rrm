#!/bin/bash
#SBATCH --nodes=1
#SBATCH --job-name=cdo_remapcon
#SBATCH --time=02:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zout_remap%j.o
#SBATCH --error=zout_remap%j.e

set -evx # verbose messages and crash message

module purge 
# Settings for flight and boca
module load aue/python/3.11

source /projects/netpub/anaconda3/2022.05/etc/profile.d/conda.sh
conda activate e3sm-unified_1.11

echo "Running in conda environment:"
conda env list

source ../configs/config.ne4pg2.sh

# # Parse command line arguments
# if [ $# -ge 1 ]; then
#     configuration_file=$1
#     source ${configuration_file}
#     shift
# else
#     echo "usage: `basename $0` <configuration_file> [--method={method name}]"
#     exit 1
# fi

# Generate mapping files between all grids
datestring=`date +'%y%m%d'`
atm_grid_file=${atm_scrip_file} # scrip.nc
ocn_grid_file=${ocn_scrip_file} # .nc

echo "Using atmosphere grid file ${atm_grid_file}"
mapping_root=${output_root}/mapping_files
mkdir -p ${mapping_root} && cd ${mapping_root}

# Map atm to ocn
# cdo -v remapcon,$atm_grid_file $ocn_grid_file ${output_root}/${grid_name}/map_${ocn_grid_name}_to_${atm_grid_name}_mono.${datestring}.nc
# cdo -v remapcon,$ocn_grid_file $atm_grid_file ${output_root}/${grid_name}/map_${atm_grid_name}_to_${ocn_grid_name}_mono.${datestring}.nc

echo "Done."

