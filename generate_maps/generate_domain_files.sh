#!/bin/bash
#SBATCH --nodes=1
#SBATCH --job-name=gen_domain
#SBATCH --time=02:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zdomain%j.o
#SBATCH --error=zdomain%j.e

set -evx # verbose messages and crash message

# module purge 
# # Settings for flight and boca
# module load aue/python/3.11

# source /projects/netpub/anaconda3/2022.05/etc/profile.d/conda.sh
# conda activate e3sm-unified_1.11

# echo "Running in conda environment:"
# conda env list



source ../configs/config.ne4pg2.sh

#-------------------------------------------------------------------------------
# Call python file to build domain files from mapping files (traave)
datestring="251218"
map_file="${mapping_root}/map_${ocn_grid_name}_to_${atm_grid_name}_traave.${datestring}.nc"
echo "Creating domain file from map_file=${map_file}"

conda run -n e3sm-unified_1.11 python generate_domain_files_E3SM.py -m ${map_file} -o ${ocn_grid_name} -l ${atm_grid_name} --date-stamp=${datestring} --output-root=${output_root}

echo "done."

