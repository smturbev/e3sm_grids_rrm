#!/bin/bash -e
#SBATCH --nodes=1
#SBATCH --job-name=gen-topo
#SBATCH --time=01:00:00
#SBATCH --account=fy250018
#SBATCH --license=gpfs,tscratch
#SBATCH --reservation=flight-cldera
#SBATCH --partition=short,batch
#SBATCH --mail-user=smturbe@sandia.gov
#SBATCH --mail-type=ALL
#SBATCH --output=zstep4c.o
#SBATCH --error=zstep4c.e

set -evx # verbose messages and crash message
# activate conda environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate e3sm-unified_1.11
#############################################
##### Generate topography for ne30 case #####
#############################################
grid_name="ne30"
grid_ne=30
grid_root=/tscratch/${USER}/e3sm_grids/${grid_name}
topo_root=${grid_root}/topo

mkdir -p ${grid_root}
mkdir -p ${topo_root}

# relevant paths to tools/code
e3sm_root=/ascldap/users/${USER}/codes/e3sm/cct-e3sm-fresh
homme_tool_root=/tscratch/smturbe/homme_test/homme_tool
cube_to_target_root=/tscratch/smturbe/homme_test/cube_to_target
DIN_LOC_ROOT=/projects/ccsm/inputdata

# io file names
topo_file_0=${DIN_LOC_ROOT}/atm/cam/hrtopo/USGS-topo-cube3000.nc

##### Step 1: TempestRemap
# Create GLL and pg2 grid template files for
# USGS-topo-cube3000 high res data and target grid

# # For uniform grids - target grid for topo
# # Generate the element mesh.
# GenerateCSMesh --alt --res ${grid_ne} --file ${topo_root}/${grid_name}.g
# # Generate the target physgrid mesh and SCRIP file:
# GenerateVolumetricMesh --in ${topo_root}/${grid_name}.g --out ${topo_root}/${grid_name}pg2.g --np 2 --uniform
# ConvertMeshToSCRIP --in ${topo_root}/${grid_name}pg2.g --out ${topo_root}/${grid_name}pg2_scrip.nc

# # Generate exodus & SCRIP file for the USGS-topo-cube3000.nc file:
# GenerateCSMesh --alt --res 3000  --file ${topo_root}/ne3000.g
# ConvertMeshToSCRIP --in ${topo_root}/ne3000.g  --out ${topo_root}/ne3000pg1.scrip.nc
 
##### Step 2: homme_tool
# Generate GLL SCRIP file for target grid: for RRM grids, this SCRIP files are good enough
# for topo downsampling, but not conservative enough for use in the coupled model:
eval $( ${e3sm_root}/cime/CIME/Tools/get_case_env )

# Make sure homme_tool has already been build
cd ${homme_tool_root}

rm -f input_ne30.nl
cat > input_ne30.nl <<EOF                                                                                                
&ctl_nl                                                                                                             
ne = $grid_ne                                                                                                        
mesh_file = "none"                                                                                                  
/                                                                                                                                                                                                                                    
&vert_nl                                                                                                            
/                                                                                                                   

&analysis_nl                                                                                                        
tool = 'grid_template_tool'                                                                                         
output_dir = "./"                                                                                                   
output_timeunits=1                                                                                                  
output_frequency=1                                                                                                  
output_varnames1='area','corners','cv_lat','cv_lon'                                                                 
output_type='netcdf'                                                                                                
!output_type='netcdf4p'  ! needed for ne1024                                                                        
io_stride = 16                                                                                                      
/                                                                                                                   
EOF                                                                                                                 

rm -f homme_tool_input_ne30.sh
cat > homme_tool_input_ne30.sh <<EOF
#!/bin/bash -exv
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
#SBATCH --output=zhomme_tool_ne30.o
#SBATCH --error=zhomme_tool_ne30.e

srun -K -c 1 -N 1 src/tool/homme_tool < input_ne30.nl
EOF

# # Run homme_tool
# sbatch homme_tool_input_ne30.sh
# exit 1

##### Step 3: make scrip file using ncl
cd ${homme_tool_root}

# # make the 'scrip' file for target GLL grid                                                                                             
# ncks -O -v lat,lon,area,cv_lat,cv_lon ${grid_name}np4_tmp1.nc ${grid_name}np4_tmp.nc

# conda activate smt_ncl
# export LD_PRELOAD=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64/libmkl_rt.so
# ncl ${e3sm_root}/components/homme/test/tool/ncl/HOMME2SCRIP.ncl  name=\"${grid_name}np4\"  ne=$grid_ne  np=4

##### Step 4: cube to target, run 1 of 2
${cube_to_target_root}/cube_to_target \
  --target-grid ${homme_tool_root}/ne30np4_scrip.nc \
  --input-topography ${topo_file_0} \
  --output-topography ${topo_root}/ne30np4_topo.nc