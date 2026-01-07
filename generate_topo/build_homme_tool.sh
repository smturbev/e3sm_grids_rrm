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

source ../configs/config.ne4pg2.sh

# Set the machine specific environment
cd ${e3sm_root}/components/homme

# load the appropriate machine environment
eval $(${e3sm_root}/cime/CIME/Tools/get_case_env)

# Specify machine configuration file
# mach_file=${e3sm_root}/components/homme/cmake/machineFiles/pm-cpu.cmake
mach_file=${e3sm_root}/components/homme/cmake/machineFiles/flight.cmake

cmake -C ${mach_file} \
-DBUILD_HOMME_THETA_KOKKOS=FALSE \
-DBUILD_HOMME_PREQX_KOKKOS=FALSE \
-DHOMME_ENABLE_COMPOSE=FALSE \
-DHOMME_BUILD_EXECS=FALSE \
-DBUILD_HOMME_TOOL=TRUE \
-DBUILD_HOMME_WITHOUT_PIOLIBRARY=FALSE \
-DPREQX_PLEV=26 \
${e3sm_root}/components/homme

make -j4 homme_tool