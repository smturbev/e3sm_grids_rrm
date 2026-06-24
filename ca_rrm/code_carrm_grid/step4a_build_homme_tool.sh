#!/bin/bash -ev
# This script builds homme tool (set up for flight)

# Set relevant paths
e3sm_root=~/codes/e3sm/jasonltorchinsky-flight
script_dir=$PWD
homme_root=${e3sm_root}/components/homme
bld_root=/tscratch/smturbe/homme_test/homme_tool
mach_file=${e3sm_root}/components/homme/cmake/machineFiles/flight-intel.cmake

# Ensure build directory exists
mkdir -p $bld_root

# Set CMake flags
cmake_flags=" -DBUILD_HOMME_WITHOUT_PIOLIBRARY=OFF"
cmake_flags+=" -DPREQX_PLEV=26"
cmake_flags+=" -DBUILD_HOMME_TOOL=TRUE"
cmake_flags+=" -DMPI_C_COMPILER=/opt/toss/openmpi/4.1/intel/bin/mpicc"
cmake_flags+=" -DMPI_CXX_COMPILER=/opt/toss/openmpi/4.1/intel/bin/mpicxx"
cmake_flags+=" -DMPI_Fortran_COMPILER=/opt/toss/openmpi/4.1/intel/bin/mpif90"
cmake_flags+=" -DNetCDF_C_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme"
cmake_flags+=" -DNetCDF_Fortran_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme"
# Optional flags
# cmake_flags+=" -DBUILD_HOMME_THETA_KOKKOS=FALSE"
# cmake_flags+=" -DBUILD_HOMME_PREQX_KOKKOS=FALSE"
# cmake_flags+=" -DHOMME_ENABLE_COMPOSE=FALSE"
# cmake_flags+=" -DHOMME_BUILD_EXECS=FALSE"
# cmake_flags+=" -DNetCDF_Fortran_CONFIG_EXE=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin/nf-config"
# cmake_flags+=" -DNetCDF_Fortran_LIBRARY=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib/libnetcdff.so"
# cmake_flags+=" -DNetCDF_C_LIBRARY=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib/libnetcdf.so"
# cmake_flags+=" -DNetCDF_INCLUDE_DIR=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include"
# cmake_flags+=" -DNetCDF_Fortran_INCLUDE_DIR=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include"
# cmake_flags+=" -DPnetCDF_C_PATH=/path/to/pnetcdf/install"
# cmake_flags+=" -DPnetCDF_Fortran_PATH=/path/to/pnetcdf/install"


# Go to build dir and run there
cd ${bld_root}

export CC=mpicc
export CXX=mpicxx
export FC=mpif90
export MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0

# Set up the environment
# make sure your terminal is set-up correctly (flight-env)
ml load aue/parallel-netcdf/1.12.3-oneapi-2021.5.0-openmpi-4.1.6
eval `${e3sm_root}/cime/CIME/Tools/get_case_env`

# # Run cmake
# cmake -C ${mach_file} $homme_root $cmake_flags

# # Run make with verbose output and call it homme_tool
# make VERBOSE=1 -j4 homme_tool

# echo "-- Built homme_tool"

# cd $script_dir
# echo "-- Returning to script dir"
# echo "-- Done!"