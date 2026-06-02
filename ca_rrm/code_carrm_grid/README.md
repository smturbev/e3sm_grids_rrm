# New Horizontal Grids 

Follows step-by-step E3SM guide [here](https://docs.e3sm.org/E3SM/dev-guide/adding-grid-support/adding-grid-support-step-by-step-guide/)
for generating new grids.

\textbf{Example case:} CA-RRM ne256 (CAx8)

## Step 0: Set up your environment

Everything should be available in the [E3SM-unified environment](https://github.com/E3SM-Project/e3sm-unified). 
I used the [e3sm-unified_1.11](https://wiki.sandia.gov/spaces/SCTR/overview#SCTRHome-Condaenv). 
The important packages for grid generation is [SQuadGen](https://github.com/ClimateGlobalChange/squadgen) 
and [TempestRemap](https://github.com/ClimateGlobalChange/tempestremap). 

```
conda create -n e3sm-unified_1.11 -c conda-forge -c defaults -c e3sm python=3.10 "e3sm-unified=*=mpi_mpich_*"

conda activate e3sm-unified_1.11
```


## Step 1: Generate grid

Following the example [here](https://docs.e3sm.org/E3SM/dev-guide/adding-grid-support/adding-grid-support-step-by-step-guide/generate-RRM-grid-file/).

I've included an example python script to generate the png image from scratch. However, I just used the CA_v1_input.png file (same as the one used in the following papers: Zhang et al., [2024](doi.org/10.5194/gmd-17-3687-2024); [2026](doi.org/10.5194/gmd-19-795-2026)). 

Once you have your png file, you can generate all the necessary grid files for the RRM by running this file. Edit the file to update with your paths, then submit to the queue:

```sbatch step1_carrm_grid_generation.sh```


## Step 2: Generate mapping files

Following the example [here](https://docs.e3sm.org/E3SM/dev-guide/adding-grid-support/adding-grid-support-step-by-step-guide/generate-mapping-files/).

```sbatch step2_mapping_files_generation.sh```

## Step 3: Generate domain files

Takes the output from step 2 (mapping files) and creates domain files from that. Run the bash script that runs the python script (don't change the python script).

```sbatch step3_generate_domain_files.sh```

## Step 4: Generate topography files

Start with high-resolution input topography data (```USGS-topo-cube3000.nc```). This is the most complicated step so far, the main steps are outlined below:

1. Build ```homme_tool```
2. Build ```cube_to_target``` tool
3. Remap topography
4. Apply smoothing (using ```homme_tool```)
5. Compute SGH (using ```cube_to_target``` tool)

This can be simplified after both ```homme_tool``` and ```cube_to_target``` are built by running the bash script

```sbatch step4_topography_files.sh```

