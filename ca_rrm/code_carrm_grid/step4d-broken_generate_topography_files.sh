#!/bin/bash -e
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --ntasks=8  # for running homme_tool
#SBATCH --job-name=topo_gen
#SBATCH --time=01:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep4_topo.o
#SBATCH --error=zstep4_topo.e

set -ev # verbose messages and crash message
#---------------------------------------------------------------------------
# activate conda environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate e3sm-unified_1.11

SCRATCH=/tscratch/${USER}/e3sm_grids/ne32
# Specify E3SM source code path - preferably a fresh clone
e3sm_root=/ascldap/users/${USER}/codes/e3sm/cct-e3sm-fresh
# Specify path to build for homme_tool
homme_tool_root=/tscratch/smturbe/homme_test/homme_tool
cube_to_target_root=/tscratch/smturbe/homme_test/cube_to_target
# Specify source and target resolutions
NE_SRC=3000 ; NE_DST=32
topo_grid_name="CA32x8"
# NE_SRC=90 ; NE_DST=30 # low-res grid combination for testing
# Specify time stamp for creation date
timestamp=$(date +%Y%m%d)
# Specify root paths
grid_root=${SCRATCH}
map_root=${SCRATCH}
topo_root=${SCRATCH}/topo
DIN_LOC_ROOT=/projects/ccsm/inputdata
# argument for ncremap to select TempestRemap or mbtempest backend
MAP_ARGS=
# MAP_ARGS+="--mpi_nbr=32"
#---------------------------------------------------------------------------
# Stop script execution on error
set -e
# ANSI color codes for highlighting terminal output
RED='\033[0;31m' ; GRN='\033[0;32m' CYN='\033[0;36m' ; NC='\033[0m'
# start timer for entire script
start=`date +%s`
#---------------------------------------------------------------------------
# Specify topo file names - including temporary files that will be deleted
topo_file_0=${DIN_LOC_ROOT}/atm/cam/hrtopo/USGS-topo-cube${NE_SRC}.nc
topo_file_1=${topo_root}/tmp_USGS-topo_${topo_grid_name}_np4.nc
topo_file_2=${topo_root}/tmp_USGS-topo_${topo_grid_name}np4_smoothedx6t.nc
topo_file_3=${topo_root}/USGS-topo_${topo_grid_name}np4_smoothedx6t_c${timestamp}.nc
# Specify map file name
map_file_src_to_np4=${map_root}/map_ne${NE_SRC}pg1_to_${topo_grid_name}np4_fv2se_flx.nc
#---------------------------------------------------------------------------  
# print some useful things
echo --------------------------------------------------------------------------------
echo --------------------------------------------------------------------------------
echo
echo   NE_SRC              = $NE_SRC
echo   NE_DST              = $NE_DST
echo
echo   e3sm_root           = $e3sm_root
echo   grid_root           = $grid_root
echo   map_root            = $map_root
echo   topo_root           = $topo_root
echo   DIN_LOC_ROOT        = $DIN_LOC_ROOT
echo
echo   topo_file_0         = $topo_file_0
echo   topo_file_1         = $topo_file_1
echo   topo_file_2         = $topo_file_2
echo   topo_file_3         = $topo_file_3
echo
echo   map_file_src_to_np4 = $map_file_src_to_np4
echo
echo --------------------------------------------------------------------------------
echo --------------------------------------------------------------------------------
#---------------------------------------------------------------------------
# Make sure paths exist
mkdir -p ${grid_root} ${map_root} ${topo_root}
if [ ! -d ${DIN_LOC_ROOT} ]; then echo -e ${RED}ERROR directory does not exist:${NC} ${DIN_LOC_ROOT} ; fi
if [ ! -d ${e3sm_root}    ]; then echo -e ${RED}ERROR directory does not exist:${NC} ${e3sm_root} ; fi
if [ ! -d ${grid_root}    ]; then echo -e ${RED}ERROR directory does not exist:${NC} ${grid_root} ; fi
if [ ! -d ${map_root}     ]; then echo -e ${RED}ERROR directory does not exist:${NC} ${map_root} ; fi
if [ ! -d ${topo_root}    ]; then echo -e ${RED}ERROR directory does not exist:${NC} ${topo_root} ; fi
#---------------------------------------------------------------------------
# set to echo commands
set -x
#---------------------------------------------------------------------------
# # Create grid for source high res topo
# GenerateCSMesh --alt --res ${NE_SRC} --file ${grid_root}/exodus_ne${NE_SRC}.g
# ConvertMeshToSCRIP --in ${grid_root}/exodus_ne${NE_SRC}.g  --out ${grid_root}/scrip_ne${NE_SRC}pg1.nc
# done above!

# # For RRM grid
# ConvertMeshToSCRIP --in ${grid_root}/CA_ne32_x32_v1_pg2.g --out CA_ne32_x32_v1_pg2_scrip.nc
exodus_dst_grid=${grid_root}/2026_screamv1_CA32x8.g
scrip_dst_grid=${grid_root}/2026_screamv1_CA32x8-pg2_scrip.nc

cd ${homme_tool_root}
eval $(${e3sm_root}/cime/CIME/Tools/get_case_env)

# ---make the 'scrip' file for target GLL grid
grid_name=CAne32x32v1np4

# cd ${e3sm_root}/components/homme
eval $(${e3sm_root}/cime/CIME/Tools/get_case_env)

# #### Part 1
# cube to target - 1 of 2
${cube_to_target_root}/cube_to_target \
  --target-grid ${topo_root}/${grid_name}_scrip.nc \
  --input-topography ${topo_file_0} \
  --output-topography ${topo_file_1}test.nc

exit 1

# running above outputs:
# /tscratch/smturbe/homme_test/cube_to_target/cube_to_target --target-grid /tscratch/smturbe/e3sm_grids/ne32/topo/CAne32x32v1np4_scrip.nc --input-topography /projects/ccsm/inputdata/atm/cam/hrtopo/USGS-topo-cube3000.nc --output-topography /tscratch/smturbe/e3sm_grids/ne32/topo/tmp_USGS-topo_CA32x8_np4.nctest.nc
#  dimension of target grid: ntarget=       66098
#  maximum number of corners: ncorner=          12
#  grid rank: nrank=           1
#  get dimension of cubed-sphere data from file
#  cubed-sphere dimension: ncube =         3000
#  average grid-spacing at the Equator (degrees):  2.9999999E-02

# #### Part 2
cat <<EOF > input2.nl
&ctl_nl
mesh_file = "${exodus_dst_grid}"
smooth_phis_p2filt = 0
smooth_phis_numcycle = 6 ! v2/v3 uses 12/6 for more/less smoothing
smooth_phis_nudt = 4e-16
hypervis_scaling = 2
se_ftype = 2 ! actually output NPHYS; overloaded use of ftype
/
&vert_nl
/
&analysis_nl
tool = 'topo_pgn_to_smoothed'
infilenames = '${topo_file_1}', '${topo_file_2}'
/
EOF

rm -f homme_tool_input2.sh
cat > homme_tool_input2.sh <<EOF
#!/bin/bash -e
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --ntasks=8  # for running homme_tool
#SBATCH --job-name=topo_gen_homme
#SBATCH --time=12:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep4d_homme_tool_input2.o
#SBATCH --error=zstep4d_homme_tool_input2.e

srun -K -c 1 -N 1 ${homme_tool_root}/src/tool/homme_tool < input2.nl
EOF

# sbatch homme_tool_input2.sh
# exit 1

#### Part 3 
## Cube to Target - 2 of 2
${cube_to_target_root}/cube_to_target \
    --target-grid ${scrip_dst_grid} \
    --input-topography ${topo_file_0} \
    --smoothed-topography ${topo_file_2} \
    --output-topography ${topo_file_3}

ncks -A ${topo_file_2} ${topo_file_3}
exit 1