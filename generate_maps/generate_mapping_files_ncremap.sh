#!/bin/bash
#SBATCH --nodes=1
#SBATCH --job-name=ncremap
#SBATCH --time=02:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=z_ncremap_traave_a2o%j.o
#SBATCH --error=z_ncremap_traave_a2o%j.e

set -evx # verbose messages and crash message

module purge 
# Settings for flight and boca
module load aue/python/3.11

source /projects/netpub/anaconda3/2022.05/etc/profile.d/conda.sh
conda activate e3sm-unified_1.11

echo "Running in conda environment:"
conda env list

# Parse command line arguments
if [ $# -ge 1 ]; then
    configuration_file=$1
    source ${configuration_file}
    shift
else
    echo "usage: `basename $0` <configuration_file>"
    exit 1
fi

# # Parse optional arguments
# method="tempest"
# for arg in "$@"; do
#     case $arg in
#         --method=*)
#             method="${arg#*=}"
#             shift
#             ;;
#         *)
#             echo "Error parsing ${arg}. See usage."
#             exit 1
#             ;;
#     esac
# done

# Load a common conda environment for E3SM pre and post processing tools
#source .env_mach_specific.sh
export PATH=${tempest_root}/bin:${PATH}
# source ../configs/config.ne4pg2.sh

# Generate mapping files between all grids
datestring=`date +'%y%m%d'`

atm_grid_file=${atm_mesh_file}
lnd_grid_file=${lnd_scrip_file}
ocn_grid_file=${ocn_scrip_file}
atm_name=${atm_grid_name}
ocn_name=${ocn_grid_name}
lnd_name=${lnd_grid_name}
echo "Using atmosphere grid file ${atm_grid_file}"
mapping_root=${output_root}/mapping_files
mkdir -p ${mapping_root} && cd ${mapping_root}
echo "cd ${mapping_root}"

map1="map_${ocn_name}_to_${atm_name}_traave.${datestring}.nc"
map2="map_${ocn_name}_to_${atm_name}_tribilin.${datestring}.nc"
map3="map_${ocn_name}_to_${atm_name}_trfv2.${datestring}.nc"
map4="map_${ocn_name}_to_${atm_name}_trintbilin.${datestring}.nc"
map5="map_${atm_name}_to_${ocn_name}_traave.${datestring}.nc"
map6="map_${atm_name}_to_${ocn_name}_tribilin.${datestring}.nc"
map7="map_${atm_name}_to_${ocn_name}_trfv2.${datestring}.nc"
map8="map_${atm_name}_to_${ocn_name}_trintbilin.${datestring}.nc"

ncremap --alg_typ=traave           --grd_src="${ocn_grid_file}" --grd_dst="${atm_grid_file}" --map_fl="${map1}"
# ncremap --alg_typ=trbilin          --grd_src="${ocn_grid_file}" --grd_dst="${atm_grid_file}" --map_fl="${map2}"
# ncremap --alg_typ=trfv2            --grd_src="${ocn_grid_file}" --grd_dst="${atm_grid_file}" --map_fl="${map3}"
# ncremap --alg_typ=trintbilin       --grd_src="${ocn_grid_file}" --grd_dst="${atm_grid_file}" --map_fl="${map4}"
ncremap --a2o --alg_typ=traave     --grd_src="${atm_grid_file}" --grd_dst="${ocn_grid_file}" --map_fl="${map5}"
# ncremap --a2o --alg_typ=trbilin    --grd_src="${atm_grid_file}" --grd_dst="${ocn_grid_file}" --map_fl="${map6}"
# ncremap --a2o --alg_typ=trfv2      --grd_src="${atm_grid_file}" --grd_dst="${ocn_grid_file}" --map_fl="${map7}"
# ncremap --a2o --alg_typ=trintbilin --grd_src="${atm_grid_file}" --grd_dst="${ocn_grid_file}" --map_fl="${map8}"

# mbtempest for RRM ?? 

echo "Done."
