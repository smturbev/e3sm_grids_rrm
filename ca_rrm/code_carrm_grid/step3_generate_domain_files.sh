#!/bin/bash
#SBATCH --nodes=1
#SBATCH --job-name=step3_domain
#SBATCH --time=02:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep3_domain%j.o
#SBATCH --error=zstep3_domain%j.e

set -ev # verbose messages and crash message

source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate e3sm-unified_1.11

echo "Running in conda environment:"
conda env list

#--------------------
# Define relevant paths
mapping_root=/tscratch/smturbe/e3sm_grids/ne32
ocn_grid_name=ICOS10
atm_grid_name=CA32x8
datestring="260528"

#-------------------------------------------------------------------------------
# Call python file to build domain files from mapping files (traave)
map_file="${mapping_root}/map_${ocn_grid_name}_to_${atm_grid_name}_traave.${datestring}.nc"
echo "Creating domain file from map_file=${map_file}"

conda run -n e3sm-unified_1.11 python step3_generate_domain_files_E3SM.py -m ${map_file} -o ${ocn_grid_name} -l ${atm_grid_name} --date-stamp=${datestring} --output-root=${mapping_root}

echo "done."

