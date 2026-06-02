#!/bin/bash -e
#SBATCH --nodes=1
#SBATCH --job-name=carrm_grid_gen
#SBATCH --time=01:40:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --qos=normal
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep1_carrm_grid_gen.o
#SBATCH --error=zstep1_carrm_grid_gen.e

set -ev # verbose messages and crash message

# Create an ne32 mesh for a base; use tempestremap for this
# ne32 is the base mesh for low resolution portion of RRM

res=32  # base/global resolution 
refine_level=3  # equivalent to ne256
refine_res=$((2**${refine_level}))
img_file=CA_v1_input.png
output_root=/tscratch/smturbe/e3sm_grids/ne${res}
grid_name=2026_screamv1_CA${res}x${refine_res}

# activate conda environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate e3sm-unified_1.11

# generates a uniform global grid for resolution, res
# GenerateCSMesh --res ${res} --file ${output_root}/ne${res}.g

# generates an RRM grid using global resolution res
# with refinement up to refine_level (hi-res = res x 2**refine_level)
# using an image to define refinement region
SQuadGen --resolution ${res} --refine_file ${img_file} --refine_level ${refine_level} --invert --smooth_type SPRING --output ${output_root}/${grid_name}.g --lat_ref 38 --lon_ref -116 --orient_ref 20
# SQuadGen --resolution 32 --refine_file ./CA_v1_input.png --output ${output_root}/CA_ne32_x32_v1.g --smooth_type SPRING --invert --refine_level 8 --lat_ref 38 --lon_ref -116 --orient_ref 20 --block_refine

# format the grid from exodus to netcdf using np 2 
GenerateVolumetricMesh --in ${output_root}/${grid_name}.g     --out ${output_root}/${grid_name}-pg2.g --np 2 --uniform
ConvertMeshToSCRIP     --in ${output_root}/${grid_name}-pg2.g --out ${output_root}/${grid_name}-pg2_scrip.nc
# check that everything is there
ls -l ${output_root}/${grid_name}*

echo "---- done ----"
