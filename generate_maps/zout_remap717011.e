
module purge 
+ module purge
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_sh_dbg=vx
+ '[' -n vx ']'
+ set +vx
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for Lmod's output
Shell debugging restarted
+ unset __lmod_sh_dbg
+ return 0
# Settings for flight and boca
module load aue/python/3.11
+ module load aue/python/3.11
+ '[' -z '' ']'
+ case "$-" in
+ __lmod_sh_dbg=vx
+ '[' -n vx ']'
+ set +vx
Shell debugging temporarily silenced: export LMOD_SH_DBG_ON=1 for Lmod's output
Shell debugging restarted
+ unset __lmod_sh_dbg
+ return 0

source /projects/netpub/anaconda3/2022.05/etc/profile.d/conda.sh
+ source /projects/netpub/anaconda3/2022.05/etc/profile.d/conda.sh
export CONDA_EXE='/projects/netpub/anaconda3/2022.05/bin/conda'
++ export CONDA_EXE=/projects/netpub/anaconda3/2022.05/bin/conda
++ CONDA_EXE=/projects/netpub/anaconda3/2022.05/bin/conda
export _CE_M=''
++ export _CE_M=
++ _CE_M=
export _CE_CONDA=''
++ export _CE_CONDA=
++ _CE_CONDA=
export CONDA_PYTHON_EXE='/projects/netpub/anaconda3/2022.05/bin/python'
++ export CONDA_PYTHON_EXE=/projects/netpub/anaconda3/2022.05/bin/python
++ CONDA_PYTHON_EXE=/projects/netpub/anaconda3/2022.05/bin/python

# Copyright (C) 2012 Anaconda, Inc
# SPDX-License-Identifier: BSD-3-Clause

__add_sys_prefix_to_path() {
    # In dev-mode CONDA_EXE is python.exe and on Windows
    # it is in a different relative location to condabin.
    if [ -n "${_CE_CONDA}" ] && [ -n "${WINDIR+x}" ]; then
        SYSP=$(\dirname "${CONDA_EXE}")
    else
        SYSP=$(\dirname "${CONDA_EXE}")
        SYSP=$(\dirname "${SYSP}")
    fi

    if [ -n "${WINDIR+x}" ]; then
        PATH="${SYSP}/bin:${PATH}"
        PATH="${SYSP}/Scripts:${PATH}"
        PATH="${SYSP}/Library/bin:${PATH}"
        PATH="${SYSP}/Library/usr/bin:${PATH}"
        PATH="${SYSP}/Library/mingw-w64/bin:${PATH}"
        PATH="${SYSP}:${PATH}"
    else
        PATH="${SYSP}/bin:${PATH}"
    fi
    \export PATH
}

__conda_exe() (
    __add_sys_prefix_to_path
    "$CONDA_EXE" $_CE_M $_CE_CONDA "$@"
)

__conda_hashr() {
    if [ -n "${ZSH_VERSION:+x}" ]; then
        \rehash
    elif [ -n "${POSH_VERSION:+x}" ]; then
        :  # pass
    else
        \hash -r
    fi
}

__conda_activate() {
    if [ -n "${CONDA_PS1_BACKUP:+x}" ]; then
        # Handle transition from shell activated with conda <= 4.3 to a subsequent activation
        # after conda updated to >= 4.4. See issue #6173.
        PS1="$CONDA_PS1_BACKUP"
        \unset CONDA_PS1_BACKUP
    fi
    \local ask_conda
    ask_conda="$(PS1="${PS1:-}" __conda_exe shell.posix "$@")" || \return
    \eval "$ask_conda"
    __conda_hashr
}

__conda_reactivate() {
    \local ask_conda
    ask_conda="$(PS1="${PS1:-}" __conda_exe shell.posix reactivate)" || \return
    \eval "$ask_conda"
    __conda_hashr
}

conda() {
    \local cmd="${1-__missing__}"
    case "$cmd" in
        activate|deactivate)
            __conda_activate "$@"
            ;;
        install|update|upgrade|remove|uninstall)
            __conda_exe "$@" || \return
            __conda_reactivate
            ;;
        *)
            __conda_exe "$@"
            ;;
    esac
}

if [ -z "${CONDA_SHLVL+x}" ]; then
    \export CONDA_SHLVL=0
    # In dev-mode CONDA_EXE is python.exe and on Windows
    # it is in a different relative location to condabin.
    if [ -n "${_CE_CONDA:+x}" ] && [ -n "${WINDIR+x}" ]; then
        PATH="$(\dirname "$CONDA_EXE")/condabin${PATH:+":${PATH}"}"
    else
        PATH="$(\dirname "$(\dirname "$CONDA_EXE")")/condabin${PATH:+":${PATH}"}"
    fi
    \export PATH

    # We're not allowing PS1 to be unbound. It must at least be set.
    # However, we're not exporting it, which can cause problems when starting a second shell
    # via a first shell (i.e. starting zsh from bash).
    if [ -z "${PS1+x}" ]; then
        PS1=
    fi
fi
++ '[' -z x ']'
conda activate e3sm-unified_1.11
+ conda activate e3sm-unified_1.11
+ local cmd=activate
+ case "$cmd" in
+ __conda_activate activate e3sm-unified_1.11
+ '[' -n '' ']'
+ local ask_conda
++ PS1=
++ __conda_exe shell.posix activate e3sm-unified_1.11
++ __add_sys_prefix_to_path
++ '[' -n '' ']'
+++ dirname /projects/netpub/anaconda3/2022.05/bin/conda
++ SYSP=/projects/netpub/anaconda3/2022.05/bin
+++ dirname /projects/netpub/anaconda3/2022.05/bin
++ SYSP=/projects/netpub/anaconda3/2022.05
++ '[' -n '' ']'
++ PATH=/projects/netpub/anaconda3/2022.05/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/smt_movie/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
++ export PATH
++ /projects/netpub/anaconda3/2022.05/bin/conda shell.posix activate e3sm-unified_1.11
+ ask_conda='. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libxml2_deactivate.sh"
. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libglib_deactivate.sh"
PS1='\''(e3sm-unified_1.11) '\''
export PATH='\''/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'\''
export CONDA_PREFIX='\''/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'\''
export CONDA_SHLVL='\''3'\''
export CONDA_DEFAULT_ENV='\''e3sm-unified_1.11'\''
export CONDA_PROMPT_MODIFIER='\''(e3sm-unified_1.11) '\''
export CONDA_EXE='\''/projects/netpub/anaconda3/2022.05/bin/conda'\''
export _CE_M='\'''\''
export _CE_CONDA='\'''\''
export CONDA_PYTHON_EXE='\''/projects/netpub/anaconda3/2022.05/bin/python'\''
export CONDA_PREFIX_2='\''/ascldap/users/smturbe/.conda/envs/smt_movie'\''
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/activate-r-base.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/cartopy_offline_data-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmf-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmpy-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/gdal-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geometric_features-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geotiff-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libarrow_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libglib_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libxml2_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/magics-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/proj4-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/ucx-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/udunits2-activate.sh"'
+ eval '. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libxml2_deactivate.sh"
. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libglib_deactivate.sh"
PS1='\''(e3sm-unified_1.11) '\''
export PATH='\''/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'\''
export CONDA_PREFIX='\''/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'\''
export CONDA_SHLVL='\''3'\''
export CONDA_DEFAULT_ENV='\''e3sm-unified_1.11'\''
export CONDA_PROMPT_MODIFIER='\''(e3sm-unified_1.11) '\''
export CONDA_EXE='\''/projects/netpub/anaconda3/2022.05/bin/conda'\''
export _CE_M='\'''\''
export _CE_CONDA='\'''\''
export CONDA_PYTHON_EXE='\''/projects/netpub/anaconda3/2022.05/bin/python'\''
export CONDA_PREFIX_2='\''/ascldap/users/smturbe/.conda/envs/smt_movie'\''
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/activate-r-base.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/cartopy_offline_data-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmf-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmpy-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/gdal-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geometric_features-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geotiff-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libarrow_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libglib_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libxml2_activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/magics-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/proj4-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/ucx-activate.sh"
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/udunits2-activate.sh"'
. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libxml2_deactivate.sh"
++ . /ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libxml2_deactivate.sh
#! /bin/sh

if test -n "${xml_catalog_files_libxml2:-}"; then
    export XML_CATALOG_FILES="${xml_catalog_files_libxml2}"
else
    unset XML_CATALOG_FILES
fi
+++ test -n ''
+++ unset XML_CATALOG_FILES
unset xml_catalog_files_libxml2
+++ unset xml_catalog_files_libxml2
. "/ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libglib_deactivate.sh"
++ . /ascldap/users/smturbe/.conda/envs/smt_movie/etc/conda/deactivate.d/libglib_deactivate.sh
export GSETTINGS_SCHEMA_DIR=${GSETTINGS_SCHEMA_DIR_CONDA_BACKUP:-}
+++ export GSETTINGS_SCHEMA_DIR=
+++ GSETTINGS_SCHEMA_DIR=
unset GSETTINGS_SCHEMA_DIR_CONDA_BACKUP
+++ unset GSETTINGS_SCHEMA_DIR_CONDA_BACKUP
if [ -z $GSETTINGS_SCHEMA_DIR ]; then
    unset GSETTINGS_SCHEMA_DIR
fi
+++ '[' -z ']'
+++ unset GSETTINGS_SCHEMA_DIR

PS1='(e3sm-unified_1.11) '
++ PS1='(e3sm-unified_1.11) '
export PATH='/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'
++ export PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
++ PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export CONDA_PREFIX='/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'
++ export CONDA_PREFIX=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
++ CONDA_PREFIX=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
export CONDA_SHLVL='3'
++ export CONDA_SHLVL=3
++ CONDA_SHLVL=3
export CONDA_DEFAULT_ENV='e3sm-unified_1.11'
++ export CONDA_DEFAULT_ENV=e3sm-unified_1.11
++ CONDA_DEFAULT_ENV=e3sm-unified_1.11
export CONDA_PROMPT_MODIFIER='(e3sm-unified_1.11) '
++ export 'CONDA_PROMPT_MODIFIER=(e3sm-unified_1.11) '
++ CONDA_PROMPT_MODIFIER='(e3sm-unified_1.11) '
export CONDA_EXE='/projects/netpub/anaconda3/2022.05/bin/conda'
++ export CONDA_EXE=/projects/netpub/anaconda3/2022.05/bin/conda
++ CONDA_EXE=/projects/netpub/anaconda3/2022.05/bin/conda
export _CE_M=''
++ export _CE_M=
++ _CE_M=
export _CE_CONDA=''
++ export _CE_CONDA=
++ _CE_CONDA=
export CONDA_PYTHON_EXE='/projects/netpub/anaconda3/2022.05/bin/python'
++ export CONDA_PYTHON_EXE=/projects/netpub/anaconda3/2022.05/bin/python
++ CONDA_PYTHON_EXE=/projects/netpub/anaconda3/2022.05/bin/python
export CONDA_PREFIX_2='/ascldap/users/smturbe/.conda/envs/smt_movie'
++ export CONDA_PREFIX_2=/ascldap/users/smturbe/.conda/envs/smt_movie
++ CONDA_PREFIX_2=/ascldap/users/smturbe/.conda/envs/smt_movie
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/activate-r-base.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/activate-r-base.sh
# shellcheck shell=sh

R CMD javareconf > /dev/null 2>&1 || true
+++ R CMD javareconf

# store existing RSTUDIO_WHICH_R
if [ -n "${RSTUDIO_WHICH_R+x}" ]; then
  export RSTUDIO_WHICH_R_PREV="${RSTUDIO_WHICH_R}"
fi
+++ '[' -n '' ']'
# shellcheck disable=SC2154  # CONDA_PREFIX is always set in this context
export RSTUDIO_WHICH_R="${CONDA_PREFIX}/bin/R"
+++ export RSTUDIO_WHICH_R=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin/R
+++ RSTUDIO_WHICH_R=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin/R
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/cartopy_offline_data-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/cartopy_offline_data-activate.sh
#!/usr/bin/env sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "$CARTOPY_DATA_DIR" ]; then
    export _CONDA_SET_CARTOPY_DATA_DIR=$CARTOPY_DATA_DIR
fi
+++ '[' -n '' ']'


export CARTOPY_DATA_DIR=${CONDA_PREFIX}/share/cartopy
+++ export CARTOPY_DATA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/cartopy
+++ CARTOPY_DATA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/cartopy
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmf-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmf-activate.sh
#!/bin/sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "${ESMFMKFILE:-}" ]; then
    export _CONDA_SET_ESMFMKFILE=$ESMFMKFILE
fi
+++ '[' -n '' ']'


if [ -f "${CONDA_PREFIX}/lib/esmf.mk" ]; then
  export ESMFMKFILE="${CONDA_PREFIX}/lib/esmf.mk"
elif [ -f "${CONDA_PREFIX}/Library/lib/esmf.mk" ]; then
  export ESMFMKFILE="${CONDA_PREFIX}/Library/lib/esmf.mk"
fi
+++ '[' -f /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk ']'
+++ export ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk
+++ ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmpy-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/esmpy-activate.sh
#!/bin/sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "${ESMFMKFILE:-}" ]; then
    export _CONDA_SET_ESMFMKFILE=$ESMFMKFILE
fi
+++ '[' -n /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk ']'
+++ export _CONDA_SET_ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk
+++ _CONDA_SET_ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk


if [ -f "${CONDA_PREFIX}/lib/esmf.mk" ]; then
  export ESMFMKFILE="${CONDA_PREFIX}/lib/esmf.mk"
elif [ -f "${CONDA_PREFIX}/Library/lib/esmf.mk" ]; then
  export ESMFMKFILE="${CONDA_PREFIX}/Library/lib/esmf.mk"
fi
+++ '[' -f /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk ']'
+++ export ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk
+++ ESMFMKFILE=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/esmf.mk
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/gdal-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/gdal-activate.sh
#!/bin/sh

# Store existing GDAL env vars and set to this conda env
# so other GDAL installs don't pollute the environment

if [ -n "${GDAL_DATA:-}" ]; then
    export _CONDA_SET_GDAL_DATA="$GDAL_DATA"
fi
+++ '[' -n '' ']'

if [ -n "${GDAL_DRIVER_PATH:-}" ]; then
    export _CONDA_SET_GDAL_DRIVER_PATH="$GDAL_DRIVER_PATH"
fi
+++ '[' -n '' ']'

# On Linux GDAL_DATA is in $CONDA_PREFIX/share/gdal, but
# Windows keeps it in $CONDA_PREFIX/Library/share/gdal
if [ -d "${CONDA_PREFIX}/share/gdal" ]; then
    export GDAL_DATA="$CONDA_PREFIX/share/gdal"
    export GDAL_DRIVER_PATH="$CONDA_PREFIX/lib/gdalplugins"
elif [ -d "$CONDA_PREFIX/Library/share/gdal" ]; then
    export GDAL_DATA="$CONDA_PREFIX/Library/share/gdal"
    export GDAL_DRIVER_PATH="$CONDA_PREFIX/Library/lib/gdalplugins"
fi
+++ '[' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdal ']'
+++ export GDAL_DATA=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdal
+++ GDAL_DATA=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdal
+++ export GDAL_DRIVER_PATH=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/gdalplugins
+++ GDAL_DRIVER_PATH=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/gdalplugins


# Support plugins if the plugin directory exists
# i.e if it has been manually created by the user
if [ ! -d "$GDAL_DRIVER_PATH" ]; then
    unset GDAL_DRIVER_PATH
fi
+++ '[' '!' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/gdalplugins ']'

# vsizip does not work without this.
export CPL_ZIP_ENCODING=UTF-8
+++ export CPL_ZIP_ENCODING=UTF-8
+++ CPL_ZIP_ENCODING=UTF-8

if [ -n "${BASH_VERSION:-}" ]; then
    if [ -f "${CONDA_PREFIX}/share/bash-completion/completions/gdalinfo" ]; then
        # Activate bash completion for all GDAL command line utilities
        source "${CONDA_PREFIX}/share/bash-completion/completions/gdalinfo"
    fi
fi
+++ '[' -n '4.4.20(1)-release' ']'
+++ '[' -f /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/bash-completion/completions/gdalinfo ']'
+++ source /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/bash-completion/completions/gdalinfo
# shellcheck shell=bash disable=SC2148
# File auto-generated by completionFinder.py, do not modify manually

function_exists() {
    declare -f -F "$1" > /dev/null
    return $?
}

# Checks that bash-completion is recent enough
function_exists _get_comp_words_by_ref || return 0
++++ function_exists _get_comp_words_by_ref
++++ declare -f -F _get_comp_words_by_ref
++++ return 1
++++ return 0
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geometric_features-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geometric_features-activate.sh
#!/usr/bin/env sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "$GEOMETRIC_DATA_DIR" ]; then
    export _CONDA_SET_GEOMETRIC_DATA_DIR=$GEOMETRIC_DATA_DIR
fi
+++ '[' -n '' ']'


export GEOMETRIC_DATA_DIR="${CONDA_PREFIX}/share/geometric_data"
+++ export GEOMETRIC_DATA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/geometric_data
+++ GEOMETRIC_DATA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/geometric_data
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geotiff-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/geotiff-activate.sh
#!/bin/sh

# Store existing GeoTIFF env vars and set to this conda env
# so other GeoTIFF installs don't pollute the environment

if [ -n "${GEOTIFF_CSV:-}" ]; then
    export _CONDA_SET_GEOTIFF_CSV="$GEOTIFF_CSV"
fi
+++ '[' -n '' ']'

# On Linux GEOTIFF_CSV is in $CONDA_PREFIX/share/epsg_csv, but
# Windows keeps it in $CONDA_PREFIX/Library/share/epsg_csv
if [ -d "${CONDA_PREFIX}/share/epsg_csv" ]; then
    export GEOTIFF_CSV="${CONDA_PREFIX}/share/epsg_csv"
elif [ -d "${CONDA_PREFIX}/Library/share/epsg_csv" ]; then
    export GEOTIFF_CSV="${CONDA_PREFIX}/Library/share/epsg_csv"
fi
+++ '[' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/epsg_csv ']'
+++ '[' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/Library/share/epsg_csv ']'


. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libarrow_activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libarrow_activate.sh
#!/bin/bash

# for the gdb-wrappers, we need to create a symlink that
# contains the full path of the lib _within_ the installed
# env, which we don't have until the env is created.

# doesn't come with a deactivate script, because the symlink
# is benign and doesn't need to be deleted.

_la_log() {
    if [ "${CF_LIBARROW_ACTIVATE_LOGGING:-}" = "1" ]; then
        # The following loop is necessary to handle multi-line strings
        # like for the output of `ls -al`.
        printf '%s\n' "$*" | while IFS= read -r line
        do
            echo "$CONDA_PREFIX/etc/conda/activate.d/libarrow_activate.sh DEBUG: $line"
        done
    fi
}

# Skip activation if CONDA_BUILD environment variable is set.
# (CONDA_BUILD is also set in the test stage, and we don't want to skip there.)
# Otherwise, the symlinks will be included in packages built with libarrow as a host dependency.
# see https://github.com/conda-forge/arrow-cpp-feedstock/issues/1478
if [ -n "${CONDA_BUILD:-}" ] && [ "${CONDA_BUILD_STATE:-0}" != "TEST" ]; then
    _la_log "CONDA_BUILD is set to $CONDA_BUILD (and CONDA_BUILD_STATE != \"TEST\"), skipping libarrow activation."
    return 0
fi
+++ '[' -n '' ']'

_la_log "Beginning libarrow activation."
+++ _la_log 'Beginning libarrow activation.'
+++ '[' '' = 1 ']'

# where the GDB wrappers get installed
_la_gdb_prefix="$CONDA_PREFIX/share/gdb/auto-load"
+++ _la_gdb_prefix=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load

# If the directory is not writable, nothing can be done
if [ ! -w "$_la_gdb_prefix" ]; then
    _la_log 'No rights to modify $_la_gdb_prefix, cannot create symlink!'
    _la_log 'Unless you plan to use the GDB debugger with libarrow, this warning can be safely ignored.'
    return
fi
+++ '[' '!' -w /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load ']'

# this needs to be in sync with ARROW_GDB_INSTALL_DIR in build.sh
_la_placeholder="replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX"
+++ _la_placeholder=replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX
# the paths here are intentionally stacked, see #935, resp.
# https://github.com/apache/arrow/blob/master/docs/source/cpp/gdb.rst#manual-loading
_la_symlink_dir="$_la_gdb_prefix/$CONDA_PREFIX/lib"
+++ _la_symlink_dir=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib
_la_orig_install_dir="$_la_gdb_prefix/$_la_placeholder/lib"
+++ _la_orig_install_dir=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib

_la_log "          _la_gdb_prefix: $_la_gdb_prefix"
+++ _la_log '          _la_gdb_prefix: /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load'
+++ '[' '' = 1 ']'
_la_log "         _la_placeholder: $_la_placeholder"
+++ _la_log '         _la_placeholder: replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX'
+++ '[' '' = 1 ']'
_la_log "         _la_symlink_dir: $_la_symlink_dir"
+++ _la_log '         _la_symlink_dir: /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib'
+++ '[' '' = 1 ']'
_la_log "    _la_orig_install_dir: $_la_orig_install_dir"
+++ _la_log '    _la_orig_install_dir: /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib'
+++ '[' '' = 1 ']'
_la_log "  content of that folder:"
+++ _la_log '  content of that folder:'
+++ '[' '' = 1 ']'
_la_log "$(ls -al "$_la_orig_install_dir" | sed 's/^/      /')"
++++ ls -al /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib
++++ sed 's/^/      /'
+++ _la_log '      total 12
      drwxrwsr-x 2 smturbe smturbe 4096 Sep 22 13:48 .
      drwxrwsr-x 3 smturbe smturbe 4096 Sep 22 13:48 ..
      -rw-rw-r-- 1 smturbe smturbe  995 Sep 22 13:43 libarrow.so.2100.0.0-gdb.py'
+++ '[' '' = 1 ']'

# there's only one lib in the _la_orig_install_dir folder, but the libname changes
# based on the version so use a loop instead of hardcoding it.
for _la_target in "$_la_orig_install_dir/"*.py; do
    if [ ! -e "$_la_target" ]; then
        # If the file doesn't exist, skip this iteration of the loop.
        # (This happens when no files are found, in which case the
        # loop runs with target equal to the pattern itself.)
        _la_log 'Folder $_la_orig_install_dir seems to not contain .py files, skipping.'
        continue
    fi
    _la_symlink="$_la_symlink_dir/$(basename "$_la_target")"
    _la_log "   _la_target: $_la_target"
    _la_log "  _la_symlink: $_la_symlink"
    if [ -L "$_la_symlink" ] && [ "$(readlink "$_la_symlink")" = "$_la_target" ]; then
        _la_log 'symlink $_la_symlink already exists and points to $_la_target, skipping.'
        continue
    fi
    _la_log 'Creating symlink $_la_symlink pointing to $_la_target.'
    mkdir -p "$_la_symlink_dir" || true
    # this check also creates the symlink; if it fails, we enter the if-branch.
    if ! ln -sf "$_la_target" "$_la_symlink"; then
        echo -n "${BASH_SOURCE[0]} WARNING: Failed to create symlink from "
        echo "'$_la_target' to '$_la_symlink'!"
        echo "Unless you plan to use the GDB debugger with libarrow, this warning can be safely ignored."
        continue
    fi
done
+++ for _la_target in "$_la_orig_install_dir/"*.py
+++ '[' '!' -e '/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/*.py' ']'
+++ _la_log 'Folder $_la_orig_install_dir seems to not contain .py files, skipping.'
+++ '[' '' = 1 ']'
+++ continue

_la_log "Libarrow activation complete."
+++ _la_log 'Libarrow activation complete.'
+++ '[' '' = 1 ']'

unset _la_gdb_prefix
+++ unset _la_gdb_prefix
unset _la_log
+++ unset _la_log
unset _la_orig_install_dir
+++ unset _la_orig_install_dir
unset _la_placeholder
+++ unset _la_placeholder
unset _la_symlink
+++ unset _la_symlink
unset _la_symlink_dir
+++ unset _la_symlink_dir
unset _la_target
+++ unset _la_target
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libglib_activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libglib_activate.sh
export GSETTINGS_SCHEMA_DIR_CONDA_BACKUP="${GSETTINGS_SCHEMA_DIR:-}"
+++ export GSETTINGS_SCHEMA_DIR_CONDA_BACKUP=
+++ GSETTINGS_SCHEMA_DIR_CONDA_BACKUP=
export GSETTINGS_SCHEMA_DIR="$CONDA_PREFIX/share/glib-2.0/schemas"
+++ export GSETTINGS_SCHEMA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/glib-2.0/schemas
+++ GSETTINGS_SCHEMA_DIR=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/glib-2.0/schemas
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libxml2_activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/libxml2_activate.sh
#!/bin/sh

if test -n "${XML_CATALOG_FILES:-}"; then
    xml_catalog_files_libxml2="${XML_CATALOG_FILES}"
    XML_CATALOG_FILES="${XML_CATALOG_FILES} "
else
    xml_catalog_files_libxml2=""
    XML_CATALOG_FILES=""
fi
+++ test -n ''
+++ xml_catalog_files_libxml2=
+++ XML_CATALOG_FILES=


# Replace space with '%20'; equivalent to
# conda_catalog_files=${CONDA_PREFIX// /%20}, except trailing space is
# ignored.
conda_catalog_files=""
+++ conda_catalog_files=
ifs_libxml2="${IFS}"
+++ ifs_libxml2=' 	
'
IFS=" "
+++ IFS=' '
rem="${CONDA_PREFIX}"
+++ rem=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
for pre in ${rem}; do
    while test "${rem#"${pre}"}" = "${rem}"; do
	conda_catalog_files="${conda_catalog_files}%20"
	rem=${rem#" "}
    done
    conda_catalog_files="${conda_catalog_files}${pre}"
    rem=${rem#"${pre}"}
done
+++ for pre in ${rem}
+++ test '' = /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
+++ conda_catalog_files=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
+++ rem=
IFS="${ifs_libxml2}"
+++ IFS=' 	
'

conda_catalog_files="file://${conda_catalog_files}/etc/xml/catalog file:///etc/xml/catalog"
+++ conda_catalog_files='file:///ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/xml/catalog file:///etc/xml/catalog'
export XML_CATALOG_FILES="${XML_CATALOG_FILES}${conda_catalog_files}"
+++ export 'XML_CATALOG_FILES=file:///ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/xml/catalog file:///etc/xml/catalog'
+++ XML_CATALOG_FILES='file:///ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/xml/catalog file:///etc/xml/catalog'
unset conda_catalog_files ifs_libxml2 rem
+++ unset conda_catalog_files ifs_libxml2 rem
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/magics-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/magics-activate.sh
#!/bin/bash
# Store existing env vars so we can restore them later
if [ -z "$MAGPLUS_HOME" ]; then
    export _CONDA_SET_MAGPLUS_HOME=$MAGPLUS_HOME
fi
+++ '[' -z '' ']'
+++ export _CONDA_SET_MAGPLUS_HOME=
+++ _CONDA_SET_MAGPLUS_HOME=

export MAGPLUS_HOME=$CONDA_PREFIX
+++ export MAGPLUS_HOME=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
+++ MAGPLUS_HOME=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/proj4-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/proj4-activate.sh
#!/bin/sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "${PROJ_DATA:-}" ]; then
    export _CONDA_SET_PROJ_DATA=$PROJ_DATA
fi
+++ '[' -n '' ']'


if [ -d "${CONDA_PREFIX}/share/proj" ]; then
  export "PROJ_DATA=${CONDA_PREFIX}/share/proj"
elif [ -d "${CONDA_PREFIX}/Library/share/proj" ]; then
  export PROJ_DATA="${CONDA_PREFIX}/Library/share/proj"
fi
+++ '[' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/proj ']'
+++ export PROJ_DATA=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/proj
+++ PROJ_DATA=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/proj

if [ -f "${CONDA_PREFIX}/share/proj/copyright_and_licenses.csv" ]; then
  # proj-data is installed because its license was copied over
  export PROJ_NETWORK="OFF"
else
  export PROJ_NETWORK="ON"
fi
+++ '[' -f /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/proj/copyright_and_licenses.csv ']'
+++ export PROJ_NETWORK=ON
+++ PROJ_NETWORK=ON
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/ucx-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/ucx-activate.sh
if [ "${CONDA_BUILD:-}" = "1" ]; then
  if [[ "${target_platform:-}" == "linux-aarch64" || "${target_platform:-}" == "linux-ppc64le" ]]; then
    # disable UCX_MEM_EVENTS during build on likely emulated platforms,
    # as it's known to segfault sometimes in these situations
    export UCX_MEM_EVENTS="${UCX_MEM_EVENTS:-no}"
  fi
fi
+++ '[' '' = 1 ']'
. "/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/udunits2-activate.sh"
++ . /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/etc/conda/activate.d/udunits2-activate.sh
#!/usr/bin/env sh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [ -n "${UDUNITS2_XML_PATH:-}" ]; then
    export _CONDA_SET_UDUNITS2_XML_PATH="$UDUNITS2_XML_PATH"
fi
+++ '[' -n '' ']'

# On Linux the share data is in $CONDA_PREFIX/share, but
# Windows keeps it in $CONDA_PREFIX/Library/share
if [ -d "${CONDA_PREFIX:-}/share/udunits" ]; then
    export UDUNITS2_XML_PATH="${CONDA_PREFIX}/share/udunits/udunits2.xml"
elif [ -d "${CONDA_PREFIX:-}/Library/share/udunits" ]; then
    export UDUNITS2_XML_PATH="${CONDA_PREFIX}/Library/share/udunits/udunits2.xml"
fi
+++ '[' -d /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/udunits ']'
+++ export UDUNITS2_XML_PATH=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/udunits/udunits2.xml
+++ UDUNITS2_XML_PATH=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/udunits/udunits2.xml
+ __conda_hashr
+ '[' -n '' ']'
+ '[' -n '' ']'
+ hash -r

echo "Running in conda environment:"
+ echo 'Running in conda environment:'
conda env list
+ conda env list
+ local cmd=env
+ case "$cmd" in
+ __conda_exe env list
+ __add_sys_prefix_to_path
+ '[' -n '' ']'
++ dirname /projects/netpub/anaconda3/2022.05/bin/conda
+ SYSP=/projects/netpub/anaconda3/2022.05/bin
++ dirname /projects/netpub/anaconda3/2022.05/bin
+ SYSP=/projects/netpub/anaconda3/2022.05
+ '[' -n '' ']'
+ PATH=/projects/netpub/anaconda3/2022.05/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-618725e67565b290ba4da6fe2d29f8fa1d4e3622/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
+ export PATH
+ /projects/netpub/anaconda3/2022.05/bin/conda env list

source ../configs/config.ne4pg2.sh
+ source ../configs/config.ne4pg2.sh
#!/bin/bash

grid_name=ne4
++ grid_name=ne4
output_root=/tscratch/smturbe/e3sm_grids/${grid_name}
++ output_root=/tscratch/smturbe/e3sm_grids/ne4
e3sm_root=${HOME}/codes/e3sm/cirrus-cloud-thinning
++ e3sm_root=/ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning

inputdata_root=/projects/ccsm/inputdata
++ inputdata_root=/projects/ccsm/inputdata
# mapdata_root=/projects/ccsm/mapping
# inputdata_root=/global/cfs/cdirs/e3sm/inputdata
# mapdata_root=/global/cfs/cdirs/e3sm/mapping

atm_grid_name=ne4np4
++ atm_grid_name=ne4np4
atm_resolution=4
++ atm_resolution=4
atm_mesh_file=${output_root}/ne${atm_resolution}pg2.g
++ atm_mesh_file=/tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g
atm_scrip_file=${output_root}/ne${atm_resolution}pg2_scrip.nc
++ atm_scrip_file=/tscratch/smturbe/e3sm_grids/ne4/ne4pg2_scrip.nc

#ocn_grid_name=oRRS15to5
#ocn_scrip_file="/project/projectdirs/acme/inputdata/ocn/mpas-o/oRRS15to5/ocean.RRS.15-5km_scrip_151209.nc"
#ocn_grid_name=oRRS18to6v3
#ocn_scrip_file="${inputdata_root}/ocn/mpas-o/oRRS18to6v3/oRRS18to6v3.171116.nc"
ocn_grid_name=oQU480
++ ocn_grid_name=oQU480
ocn_scrip_file="${inputdata_root}/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc"
++ ocn_scrip_file=/projects/ccsm/inputdata/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc

# Load a common conda environment for E3SM pre and post processing tools
#source .env_mach_specific.sh
# export PATH=~bhillma/bin:${PATH}
# export LD_LIBRARY_PATH=~bhillma/lib:${LD_LIBRARY_PATH}
#export PATH=~zender/bin_cori:${PATH}
#export LD_LIBRARY_PATH=~zender/lib_cori:${LD_LIBRARY_PATH}

# Generate mapping files between all grids
datestring=`date +'%y%m%d'`
++ date +%y%m%d
+ datestring=251211
atm_grid_file=${atm_mesh_file}
+ atm_grid_file=/tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g
lnd_grid_file=${lnd_scrip_file}
+ lnd_grid_file=
ocn_grid_file=${ocn_scrip_file}
+ ocn_grid_file=/projects/ccsm/inputdata/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc

echo "Using atmosphere grid file ${atm_grid_file}"
+ echo 'Using atmosphere grid file /tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g'
mapping_root=${output_root}/mapping_files
+ mapping_root=/tscratch/smturbe/e3sm_grids/ne4/mapping_files
mkdir -p ${mapping_root} && cd ${mapping_root}
+ mkdir -p /tscratch/smturbe/e3sm_grids/ne4/mapping_files
+ cd /tscratch/smturbe/e3sm_grids/ne4/mapping_files

# Maps between atmosphere and ocean
# if [ "${ocn_grid_name}" != "${atm_grid_name}" ]; then
echo "Map ocean to atmosphere..."
+ echo 'Map ocean to atmosphere...'
cd ${mapping_root}
+ cd /tscratch/smturbe/e3sm_grids/ne4/mapping_files
overlap_ocn_to_atm=${mapping_root}/overlap_${ocn_grid_name}_to_${atm_grid_name}.nc
+ overlap_ocn_to_atm=/tscratch/smturbe/e3sm_grids/ne4/mapping_files/overlap_oQU480_to_ne4np4.nc
echo "Generating `basename ${overlap_ocn_to_atm}`..."
++ basename /tscratch/smturbe/e3sm_grids/ne4/mapping_files/overlap_oQU480_to_ne4np4.nc
+ echo 'Generating overlap_oQU480_to_ne4np4.nc...'
GenerateOverlapMesh \
    --a ${ocn_scrip_file} \
    --b ${atm_grid_file} \
    --out ${overlap_ocn_to_atm}
+ GenerateOverlapMesh --a /projects/ccsm/inputdata/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc --b /tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g --out /tscratch/smturbe/e3sm_grids/ne4/mapping_files/overlap_oQU480_to_ne4np4.nc

map_ocn_to_atm=${mapping_root}/map_${ocn_grid_name}_to_${atm_grid_name}_mono_${datestring}.nc
+ map_ocn_to_atm=/tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_oQU480_to_ne4np4_mono_251211.nc
echo "Generating `basename ${map_ocn_to_atm}`..."
++ basename /tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_oQU480_to_ne4np4_mono_251211.nc
+ echo 'Generating map_oQU480_to_ne4np4_mono_251211.nc...'
GenerateOfflineMap \
    --in_mesh ${ocn_grid_file} --out_mesh ${atm_grid_file} \
    --ov_mesh ${overlap_ocn_to_atm} \
    --in_type fv --in_np 1 --out_type cgll --out_np 4 \
    --mono --volumetric --correct_areas \
    --out_map ${map_ocn_to_atm}
+ GenerateOfflineMap --in_mesh /projects/ccsm/inputdata/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc --out_mesh /tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g --ov_mesh /tscratch/smturbe/e3sm_grids/ne4/mapping_files/overlap_oQU480_to_ne4np4.nc --in_type fv --in_np 1 --out_type cgll --out_np 4 --mono --volumetric --correct_areas --out_map /tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_oQU480_to_ne4np4_mono_251211.nc

map_atm_to_ocn=${mapping_root}/map_${atm_grid_name}_to_${ocn_grid_name}_mono_${datestring}.nc
+ map_atm_to_ocn=/tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_ne4np4_to_oQU480_mono_251211.nc
echo "Generating `basename ${map_atm_to_ocn}`..."
++ basename /tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_ne4np4_to_oQU480_mono_251211.nc
+ echo 'Generating map_ne4np4_to_oQU480_mono_251211.nc...'
GenerateOfflineMap \
    --in_mesh ${atm_grid_file} --out_mesh ${ocn_grid_file} \
    --ov_mesh ${overlap_ocn_to_atm} \
    --in_type cgll --in_np 4 --out_type fv \
    --mono --correct_areas \
    --out_map ${map_atm_to_ocn}
+ GenerateOfflineMap --in_mesh /tscratch/smturbe/e3sm_grids/ne4/ne4pg2.g --out_mesh /projects/ccsm/inputdata/ocn/mpas-o/oQU480/ocean.QU.480km.151209.nc --ov_mesh /tscratch/smturbe/e3sm_grids/ne4/mapping_files/overlap_oQU480_to_ne4np4.nc --in_type cgll --in_np 4 --out_type fv --mono --correct_areas --out_map /tscratch/smturbe/e3sm_grids/ne4/mapping_files/map_ne4np4_to_oQU480_mono_251211.nc

# if [ "${lnd_grid_name}" != "${atm_grid_name}" ]; then
#     echo "Map land to atmosphere..."
#     cd ${mapping_root}
#     overlap_lnd_to_atm=${mapping_root}/overlap_${lnd_grid_name}_to_${atm_grid_name}.nc
#     if [ ! -e ${overlap_lnd_to_atm} ]; then
#         echo "Generating `basename ${overlap_lnd_to_atm}`..."
#         GenerateOverlapMesh \
#             --a ${lnd_scrip_file} \
#             --b ${atm_grid_file} \
#             --out ${overlap_lnd_to_atm}
#     fi
#     map_lnd_to_atm=${mapping_root}/map_${lnd_grid_name}_to_${atm_grid_name}_mono_${datestring}.nc
#     if [ ! -e ${map_lnd_to_atm} ]; then
#         echo "Generating `basename ${map_lnd_to_atm}`..."
#         GenerateOfflineMap \
#             --in_mesh ${lnd_grid_file} --out_mesh ${atm_grid_file} \
#             --ov_mesh ${overlap_lnd_to_atm} \
#             --in_type fv --in_np 1 --out_type cgll --out_np 4 \
#             --mono --volumetric --correct_areas \
#             --out_map ${map_lnd_to_atm}
#     fi
#     map_atm_to_lnd=${mapping_root}/map_${atm_grid_name}_to_${lnd_grid_name}_mono_${datestring}.nc
#     if [ ! -e ${map_atm_to_lnd} ]; then
#         echo "Generating `basename ${map_atm_to_lnd}`..."
#         GenerateOfflineMap \
#             --in_mesh ${atm_grid_file} --out_mesh ${lnd_grid_file} \
#             --ov_mesh ${overlap_lnd_to_atm} \
#             --in_type cgll --in_np 4 --out_type fv \
#             --mono --correct_areas \
#             --out_map ${map_atm_to_lnd}
#     fi
# fi

# if [ "${lnd_grid_name}" != "${ocn_grid_name}" ]; then
#     echo "Map land to ocnosphere..."
#     cd ${mapping_root}
#     overlap_ocn_to_lnd=${mapping_root}/overlap_to_${ocn_grid_name}_${lnd_grid_name}.nc
#     if [ ! -e ${overlap_ocn_to_lnd} ]; then
#         echo "Generating `basename ${overlap_ocn_to_lnd}`..."
#         GenerateOverlapMesh \
#             --a ${ocn_grid_file} \
#             --b ${lnd_scrip_file} \
#             --out ${overlap_ocn_to_lnd}
#     fi
#     map_lnd_to_ocn=${mapping_root}/map_${lnd_grid_name}_to_${ocn_grid_name}_mono_${datestring}.nc
#     if [ ! -e ${map_lnd_to_ocn} ]; then
#         echo "Generating `basename ${map_lnd_to_ocn}`..."
#         GenerateOfflineMap \
#             --in_mesh ${lnd_grid_file} --out_mesh ${ocn_grid_file} \
#             --ov_mesh ${overlap_ocn_to_lnd} \
#             --in_type fv --in_np 1 --out_type fv --out_np 1 \
#             --correct_areas \
#             --out_map ${map_lnd_to_ocn}
#     fi
#     map_ocn_to_lnd=${mapping_root}/map_${ocn_grid_name}_to_${lnd_grid_name}_mono_${datestring}.nc
#     if [ ! -e ${map_ocn_to_lnd} ]; then
#         echo "Generating `basename ${map_ocn_to_lnd}`..."
#         GenerateOfflineMap \
#             --in_mesh ${ocn_grid_file} --out_mesh ${lnd_grid_file} \
#             --ov_mesh ${overlap_ocn_to_lnd} \
#             --in_type fv --in_np 1 --out_type fv --out_np 1 \
#             --correct_areas \
#             --out_map ${map_ocn_to_lnd}
#     fi
# fi

