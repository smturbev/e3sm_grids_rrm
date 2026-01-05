# Creating new grids for SCREAM RRM

This repo is a branch of [e3sm_grids](github.com/brhillma/e3sm_grids) provides notes on the procedure to add new atmosphere grids to the Regionally Refined Mesh (RRM) in E3SM. This documentation is a modified version of [one by Ben Hillman](https://e3sm.atlassian.net/wiki/spaces/DOC/pages/872579110/Running+E3SM+on+New+Atmosphere+Grids) which itself follows a [google doc](https://docs.google.com/document/d/1ymlTgKz2SIvveRS72roKvNHN6a79B4TLOGrypPjRvg0/edit?usp=sharing) written by Mark Taylor and Colin Zarzycki. 

The specific example provided here is a new RRM mesh for the Sierra Nevadas (based on the [CA RRM](https://e3sm.atlassian.net/wiki/spaces/DOC/pages/3804299340/SCREAM+California+RRM+v0+Technical+Note) by Jishi Zhang, Qi Tang, and Peter Bogenschutz). A full library of RRMs are provided [here](https://e3sm.atlassian.net/wiki/spaces/DOC/pages/3690397775/Library+of+Regionally-Refined+Model+RRM+Grids). 

## Set up your conda environment

A lot of this work will rely on e3sm-unified environment which you can install using the following command (it takes a while so I recommend installing via tmux)

```
conda create -n e3sm-unified_1.11 -c conda-forge -c defaults -c e3sm python=3.10 "e3sm-unified=*=mpi_mpich_*"

conda activate e3sm-unified_1.11
```

If there are errors with conda related to unverified requests, reset connections, or proxies, try setting your ```~/.condarc``` to the following

    proxy_servers:
      http: http://proxy.sandia.gov:80
      http: https://proxy.sandia.gov:80
    ssl_verify: /etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt

## Setting up [TempestRemap](https://github.com/ClimateGlobalChange/tempestremap)

TempestRemap is set up as a submodule in this repo, so make sure to initialize the submodules via
```
git submodule update --init --recursive
```

Make sure you are in your e3sm-unified_1.11 conda environment.
Then follow the step-by-step guide in the TempestRemap [README](tempestremap/README.md), which is also adapted below for the steps that worked for me on flight.


From your this directory (i.e., e3sm_grids_rrm/): `cd tempestremap && autoreconf -fi`.

Then, execute this command `mkdir -p build && cd build` which creates a build dir in tempestremap then navigates to that build dir.

Set up the configuration (from the build dir)
```
../configure --prefix=${HOME}/e3sm_grids_rrm/tempestremap/build
```
You can add more details to the above command as in the TempestRemap [README](tempestremap/README.md), but the simple one above worked for me.

Finally,
```
make all
make install 
```

Doing this successfully, means you'll have success in Step 2 below.

## Step-by-step guide

### 1. Generate a new atmosphere "grid" file

- **Requirements**: TempestRemap and SQuadGen (for the RRM)
- **Generates**: Exodus grid file (```.g```)

See notebook for creating a new mesh [notebooks/create_mesh.ipynb](notebooks/create_mesh.ipynb).

### 2. Generate control volume mesh files 

- **Requirements**: exodus mesh file (```.g```), TempestRemap
- **Generates**: scrip file (```ne32x512pg2.scrip.nc```)
    - This file contains a description of the atmosphere physics grid n the format used by the original incremental remap tool SCRIP.  It is used for most output and also used to generate mapping files between components and for post-processing of most output.

From the e3sm_grids_rrm/generate_grids directory:

```
./generate_pg2_mesh.sh ../config/config.CA_ne32_x512_v1.sh
./generate_pg2_scrip.sh ../config/config.CA_ne32_x512_v1.sh
```

See bash files for these commands - [generate_grids/generate_p2_mesh.sh](generate_grids/generate_pg2_mesh.sh) and [generate_grids/generate_pg2_scrip.sh](generate_grids/generate_pg2_scrip.sh).

These ran on the log-in node on flight, but best practices would probably include using `salloc -N1 --time=00:15:00 --reservation=flight-cldera --account=${PROJECT} 

### 3. Generate mapping files

- **Requirements**: TempestRemap (if you are making grids for a coupled run, then TempestRemap should be used, not ESMF), ESMF_RegridWeightGen (best for atmosphere-only-type components), ncremap (nco), grid descriptor files for each component that exists on a different grid (atmosphere, ocean, possibly land if on a different grid than atmosphere)
- **Generates**: mapping files betweeen atmosphere and ocean (and vice versa)

In order to pass data between different components at runtime, a set of mapping files between each component is generated offline. These mapping files will also be used in Step 4 below (generating domain files).

```
conda activate e3sm-unified_1.11
PATH=${tempest_root}/bin:${PATH}
```

Now we can use ncremap to generate ALL the needed mapping files between two grids (atmosphere - land, atmosphere - ocean) calling [generate_maps/generate_mapping_files_ncremap.sh](generate_maps/generate_mapping_files_ncremap.sh)

Make sure you are working with the scrip files for generating the mapping files. For large meshes, it may take a while, so best to submit it as it to SLURM 
```
sbatch generate_maps/generate_mapping_files_ncremap.sh configs/config_ne4pg2.sh

```





### 4. Generate domain files

 Domain files are needed by the coupler and the land model at runtime. Domain files are created from the mapping files created in the previous step, using a tool provided with CIME in ${e3sm_root}/cime/tools/mapping/gen_domain_files.

 Make sure to have the e3sm_root (path to your local E3SM code base) in your config file. 

 ```
sbatch generate_maps/generate_domain_files.sh configs/config.ne4pg2.sh
 ```

 