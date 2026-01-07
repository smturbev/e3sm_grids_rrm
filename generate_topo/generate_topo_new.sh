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

conda run -n e3sm-unified_1.11 bash build_homme_tool.sh