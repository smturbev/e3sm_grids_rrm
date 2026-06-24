#!/bin/bash
# This script builds the tool cube_to_target

set -ev
e3sm_root=~/codes/e3sm/jasonltorchinsky-flight
tools_root=/tscratch/smturbe/homme_test/cube_to_target
mkdir -p ${tools_root}

# build the code
eval $( ${e3sm_root}/cime/CIME/Tools/get_case_env )
cd ${e3sm_root}/components/eam/tools/topo_tool/cube_to_target
export CC=mpicc
export CXX=mpicxx
export FC=mpif90
export MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export NETCDF_DIR=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
export INC_NETCDF=${NETCDF_DIR}/include LIB_NETCDF=${NETCDF_DIR}/lib

make

cp cube_to_target ${tools_root}/
echo "Done building cube_to_target."
echo "See ${tools_root}"
