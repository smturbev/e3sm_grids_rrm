#!/bin/bash -e
#SBATCH --nodes=1
#SBATCH --mem=16G
#SBATCH --job-name=carrm_mapping2
#SBATCH --time=01:30:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,pscratch,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --qos=normal
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep2_a2o_carrm_mapping.o
#SBATCH --error=zstep2_a2o_carrm_mapping.e

set -ev # verbose messages and crash message

output_root=/tscratch/smturbe/e3sm_grids/ne32
atm_grid_file=${output_root}/2026_screamv1_CA32x8.g
# Use hi-res ocn file (ICOS10) for RRM
# ocn_grid_file=/global/cfs/cdirs/e3sm/inputdata/ocn/mpas-o/ICOS10/ocean.ICOS10.scrip.211015.nc # pm
ocn_grid_file=/projects/ccsm/inputdata/ocn/mpas-o/ICOS10/ocean.ICOS10.scrip.211015.nc # flight
atm_name="CA32x8"
ocn_name="ICOS10"

# activate conda environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate e3sm-unified_1.11

cd ${output_root}
# ncremap -P mwf -s $ocn_grid_file -g $atm_grid_file --nm_src=oQU240 --nm_dst=ne4np4 --dt_sng=2026

echo "Running in conda environment:"
conda env list

# Generate mapping files between all grids
datestring=`date +'%y%m%d'`

echo "Using atmosphere grid file ${atm_grid_file}"
cd ${output_root}
echo "cd ${output_root}"

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