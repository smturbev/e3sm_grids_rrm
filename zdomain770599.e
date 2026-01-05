
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
++ PATH=/projects/netpub/anaconda3/2022.05/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/projects/netpub/anaconda3/2022.05/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
++ export PATH
++ /projects/netpub/anaconda3/2022.05/bin/conda shell.posix activate e3sm-unified_1.11
+ ask_conda='PS1='\''(e3sm-unified_1.11) '\''
export PATH='\''/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'\''
export CONDA_PREFIX='\''/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'\''
export CONDA_SHLVL='\''2'\''
export CONDA_DEFAULT_ENV='\''e3sm-unified_1.11'\''
export CONDA_PROMPT_MODIFIER='\''(e3sm-unified_1.11) '\''
export CONDA_EXE='\''/projects/netpub/anaconda3/2022.05/bin/conda'\''
export _CE_M='\'''\''
export _CE_CONDA='\'''\''
export CONDA_PYTHON_EXE='\''/projects/netpub/anaconda3/2022.05/bin/python'\''
export CONDA_PREFIX_1='\''/projects/netpub/anaconda3/2022.05'\''
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
+ eval 'PS1='\''(e3sm-unified_1.11) '\''
export PATH='\''/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'\''
export CONDA_PREFIX='\''/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'\''
export CONDA_SHLVL='\''2'\''
export CONDA_DEFAULT_ENV='\''e3sm-unified_1.11'\''
export CONDA_PROMPT_MODIFIER='\''(e3sm-unified_1.11) '\''
export CONDA_EXE='\''/projects/netpub/anaconda3/2022.05/bin/conda'\''
export _CE_M='\'''\''
export _CE_CONDA='\'''\''
export CONDA_PYTHON_EXE='\''/projects/netpub/anaconda3/2022.05/bin/python'\''
export CONDA_PREFIX_1='\''/projects/netpub/anaconda3/2022.05'\''
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
PS1='(e3sm-unified_1.11) '
++ PS1='(e3sm-unified_1.11) '
export PATH='/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin'
++ export PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
++ PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export CONDA_PREFIX='/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11'
++ export CONDA_PREFIX=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
++ CONDA_PREFIX=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11
export CONDA_SHLVL='2'
++ export CONDA_SHLVL=2
++ CONDA_SHLVL=2
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
export CONDA_PREFIX_1='/projects/netpub/anaconda3/2022.05'
++ export CONDA_PREFIX_1=/projects/netpub/anaconda3/2022.05
++ CONDA_PREFIX_1=/projects/netpub/anaconda3/2022.05
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
+++ '[' '!' -e /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/libarrow.so.2100.0.0-gdb.py ']'
++++ basename /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/libarrow.so.2100.0.0-gdb.py
+++ _la_symlink=/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/libarrow.so.2100.0.0-gdb.py
+++ _la_log '   _la_target: /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/libarrow.so.2100.0.0-gdb.py'
+++ '[' '' = 1 ']'
+++ _la_log '  _la_symlink: /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/libarrow.so.2100.0.0-gdb.py'
+++ '[' '' = 1 ']'
+++ '[' -L /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/libarrow.so.2100.0.0-gdb.py ']'
++++ readlink /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load//ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/lib/libarrow.so.2100.0.0-gdb.py
+++ '[' /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/libarrow.so.2100.0.0-gdb.py = /ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/share/gdb/auto-load/replace_this_section_with_absolute_slashed_path_to_CONDA_PREFIX/lib/libarrow.so.2100.0.0-gdb.py ']'
+++ _la_log 'symlink $_la_symlink already exists and points to $_la_target, skipping.'
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
+ PATH=/projects/netpub/anaconda3/2022.05/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
+ export PATH
+ /projects/netpub/anaconda3/2022.05/bin/conda env list


if [ $# -ge 1 ]; then
    configuration=$1
    source ${configuration}
    shift
else
    echo "usage: `basename $0` <configuration file>"
    exit 1
fi
+ '[' 1 -ge 1 ']'
+ configuration=./configs/config.ne4pg2.sh
+ source ./configs/config.ne4pg2.sh
#!/bin/bash

grid_name=ne4
++ grid_name=ne4
output_root=/tscratch/smturbe/e3sm_grids/${grid_name}
++ output_root=/tscratch/smturbe/e3sm_grids/ne4
e3sm_root=${HOME}/codes/e3sm/cirrus-cloud-thinning
++ e3sm_root=/ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning

inputdata_root=/projects/ccsm/inputdata
++ inputdata_root=/projects/ccsm/inputdata
tempest_root=${HOME}/e3sm_grids_rrm/tempestremap
++ tempest_root=/ascldap/users/smturbe/e3sm_grids_rrm/tempestremap
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
ocn_scrip_file="${inputdata_root}/share/meshes/mpas/ocean/ocean.QU.480km.scrip.181106.nc"
++ ocn_scrip_file=/projects/ccsm/inputdata/share/meshes/mpas/ocean/ocean.QU.480km.scrip.181106.nc

lnd_grid_name=ne4np4
++ lnd_grid_name=ne4np4
+ shift

# Parse optional arguments
method=""
+ method=
for arg in "$@"; do
    case $arg in
        --method=*)
            method="${arg#*=}"
            shift
            ;;
        *)
            echo "Error parsing ${arg}. See usage."
            exit 1
            ;;
    esac
done


#-------------------------------------------------------------------------------
# Build domain tool
gen_domain=${e3sm_root}/cime/tools/mapping/gen_domain_files/gen_domain
+ gen_domain=/ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning/cime/tools/mapping/gen_domain_files/gen_domain
cd `dirname ${gen_domain}`/src
++ dirname /ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning/cime/tools/mapping/gen_domain_files/gen_domain
+ cd /ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning/cime/tools/mapping/gen_domain_files/src

# Setup environment (should work on any E3SM-supported machine)
eval $(${e3sm_root}/cime/CIME/Tools/get_case_env)
++ /ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning/cime/CIME/Tools/get_case_env
+ eval . /usr/share/lmod/lmod/init/sh '&&' module purge '&&' module use /projects/sems/acme-boca-modulefiles/env-module '&&' module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-openmpi/4.1.4 acme-netcdf/4.7.4/acme '&&' export NETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme '&&' export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme '&&' export NETCDF_INCLUDES=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include '&&' export NETCDF_LIBS=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib '&&' export OMP_STACKSIZE=64M '&&' export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme '&&' export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
. /usr/share/lmod/lmod/init/sh && module purge && module use /projects/sems/acme-boca-modulefiles/env-module && module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-openmpi/4.1.4 acme-netcdf/4.7.4/acme && export NETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme && export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme && export NETCDF_INCLUDES=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include && export NETCDF_LIBS=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib && export OMP_STACKSIZE=64M && export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme && export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ . /usr/share/lmod/lmod/init/sh

LMOD_ROOT="/usr/share/lmod"
+++ LMOD_ROOT=/usr/share/lmod
LMOD_PKG="/usr/share/lmod/lmod"
+++ LMOD_PKG=/usr/share/lmod/lmod
LMOD_DIR="/usr/share/lmod/lmod/libexec"
+++ LMOD_DIR=/usr/share/lmod/lmod/libexec
LMOD_CMD="/usr/share/lmod/lmod/libexec/lmod"
+++ LMOD_CMD=/usr/share/lmod/lmod/libexec/lmod
MODULESHOME="/usr/share/lmod/lmod"
+++ MODULESHOME=/usr/share/lmod/lmod

export LMOD_CMD
+++ export LMOD_CMD
export LMOD_PKG
+++ export LMOD_PKG
export LMOD_DIR
+++ export LMOD_DIR
export MODULESHOME
+++ export MODULESHOME

module()
{
  eval "`$LMOD_CMD sh "$@"`"
}

clearMT()
{
  eval $($LMOD_DIR/clearLMOD_cmd --shell bash --simple)
}

########################################################################
#  ml is a shorthand tool for people who can't type moduel, err, module
#  It is also a combination command:
#     ml            -> module list
#     ml gcc        -> module load gcc
#     ml -gcc intel -> module unload gcc; module load intel
#  It does much more do: "ml --help" for more information.
ml()
{
  eval "$($LMOD_DIR/ml_cmd "$@")"
}

# Local Variables:
# mode: shell-script
# indent-tabs-mode: nil
# End:
++ module purge
+++ /usr/share/lmod/lmod/libexec/lmod sh purge
++ eval 'unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
unset CMAKE_PREFIX_PATH;
unset LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/usr/share/lmod/lmod/share/man::;
export MANPATH;
MODULEPATH=/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
unset PKG_CONFIG_PATH;
unset _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9ldGMvc2NsL21vZHVsZWZpbGVzIiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiCiwgIi9ldGMvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVt;
export _ModuleTable001_;
_ModuleTable002_=QmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmlsZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
export _ModuleTable002_;
_ModuleTable_Sz_=2;
export _ModuleTable_Sz_;'
unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
unset CMAKE_PREFIX_PATH;
+++ unset CMAKE_PREFIX_PATH
unset LOADEDMODULES;
+++ unset LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
MODULEPATH=/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ unset __LMOD_REF_COUNT_PKG_CONFIG_PATH
unset PKG_CONFIG_PATH;
+++ unset PKG_CONFIG_PATH
unset _LMFILES_;
+++ unset _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9ldGMvc2NsL21vZHVsZWZpbGVzIiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiCiwgIi9ldGMvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVt;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9ldGMvc2NsL21vZHVsZWZpbGVzIiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiCiwgIi9ldGMvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVt
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=QmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmlsZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
+++ _ModuleTable002_=QmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmlsZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable_Sz_=2;
+++ _ModuleTable_Sz_=2
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
++ module use /projects/sems/acme-boca-modulefiles/env-module
+++ /usr/share/lmod/lmod/libexec/lmod sh use /projects/sems/acme-boca-modulefiles/env-module
++ eval '__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
export _ModuleTable001_;
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
export _ModuleTable002_;
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
export _ModuleTable003_;
_ModuleTable_Sz_=3;
export _ModuleTable_Sz_;'
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/env-module:1;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
+++ _ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
+++ _ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable_Sz_=3;
+++ _ModuleTable_Sz_=3
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
++ module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-openmpi/4.1.4 acme-netcdf/4.7.4/acme
+++ /usr/share/lmod/lmod/libexec/lmod sh load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-openmpi/4.1.4 acme-netcdf/4.7.4/acme
++ eval 'BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
export BLASLIB;
CC=icc;
export CC;
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
export CMAKE_PREFIX_PATH;
__LMOD_REF_COUNT_CPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:1\;/opt/toss/openmpi/4.1/intel/include:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1;
export __LMOD_REF_COUNT_CPATH;
CPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:/opt/toss/openmpi/4.1/intel/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export CPATH;
CXX=icpc;
export CXX;
F77=ifort;
export F77;
F90=ifort;
export F90;
F95=ifort;
export F95;
FC=ifort;
export FC;
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
export GNU_INCLUDES;
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
export GNU_LIBS;
unset INTELHOME;
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
export INTEL_LICENSE_FILE;
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/opt/toss/openmpi/4.1/intel/lib:1\;/usr/lib64/nvidia:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
LD_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/opt/toss/openmpi/4.1/intel/lib:/usr/lib64/nvidia:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
export LD_LIBRARY_PATH;
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
export __LMOD_REF_COUNT_LIBRARY_PATH;
LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
export LIBRARY_PATH;
LMOD_FAMILY_MPI=openmpi-intel;
export LMOD_FAMILY_MPI;
LMOD_FAMILY_MPI_VERSION=4.1;
export LMOD_FAMILY_MPI_VERSION;
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:openmpi-intel/4.1:sems-archive-openmpi/4.1.4:acme-hdf5/1.14.0/acme:acme-netcdf/4.7.4/acme;
export LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:1\;/opt/toss/openmpi/4.1/intel/man:1\;/opt/toss/openmpi/4.1/intel/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:/opt/toss/openmpi/4.1/intel/man:/opt/toss/openmpi/4.1/intel/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
export MANPATH;
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLHOME;
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLROOT;
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDE;
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDES;
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIB;
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIBS;
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
MPICC=mpicc;
export MPICC;
MPICH_MPI=openmpi-4.1-intel-4.1.8;
export MPICH_MPI;
MPICXX=mpicxx;
export MPICXX;
MPIF77=mpif77;
export MPIF77;
MPIF90=mpif90;
export MPIF90;
MPIFC=mpif90;
export MPIFC;
MPIHOME=/opt/toss/openmpi/4.1/intel;
export MPIHOME;
MPIROOT=/opt/toss/openmpi/4.1/intel;
export MPIROOT;
MPI_HOME=/opt/toss/openmpi/4.1/intel;
export MPI_HOME;
MPI_NAME=openmpi-4.1-intel;
export MPI_NAME;
MPI_ROOT=/opt/toss/openmpi/4.1/intel;
export MPI_ROOT;
MPI_VERSION=4.1.8;
export MPI_VERSION;
OMP_NUM_THREADS=1;
export OMP_NUM_THREADS;
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:1\;/opt/toss/openmpi/4.1/intel/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:/opt/toss/openmpi/4.1/intel/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
export PKG_CONFIG_PATH;
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_MPI_VERSION;
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
export SEMS_CMAKE_ROOT;
SEMS_CMAKE_VERSION=3.19.1;
export SEMS_CMAKE_VERSION;
SEMS_COMPILER_NAME=intel;
export SEMS_COMPILER_NAME;
SEMS_COMPILER_VERSION=21.3.0;
export SEMS_COMPILER_VERSION;
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_COMPILER_VERSION;
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_MPI_VERSION;
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
export SEMS_GIT_ROOT;
SEMS_GIT_VERSION=2.10.1;
export SEMS_GIT_VERSION;
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include;
export SEMS_HDF5_INCLUDE_PATH;
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib;
export SEMS_HDF5_LIBRARY_PATH;
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_MPI_VERSION;
SEMS_HDF5_ROOT=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme;
export SEMS_HDF5_ROOT;
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,NETCDF:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,HDF5:1;
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
SEMS_LIBRARY_DATA=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,NETCDF:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,HDF5;
export SEMS_LIBRARY_DATA;
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
export SEMS_MODULEFILES_ROOT;
SEMS_MPI_NAME=openmpi;
export SEMS_MPI_NAME;
SEMS_MPI_VERSION=4.1.4;
export SEMS_MPI_VERSION;
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include;
export SEMS_NETCDF_INCLUDE_PATH;
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib;
export SEMS_NETCDF_LIBRARY_PATH;
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_MPI_VERSION;
SEMS_NETCDF_ROOT=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme;
export SEMS_NETCDF_ROOT;
SEMS_OPENMPI_LOCAL_COMPILER_VERSION=4.8.5;
export SEMS_OPENMPI_LOCAL_COMPILER_VERSION;
SEMS_OPENMPI_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_OPENMPI_LOCAL_PYTHON_VERSION;
SEMS_PLATFORM=boca;
export SEMS_PLATFORM;
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/opt/toss/modules/modulefiles/openmpi-intel/4.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-openmpi/4.1.4:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-hdf5/1.14.0/acme:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-netcdf/4.7.4/acme;
export _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0gewptcGkgPSAib3Blbm1waS1pbnRlbCIsCn0sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwi;
export _ModuleTable001_;
_ModuleTable002_=L3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwK;
export _ModuleTable002_;
_ModuleTable003_=WyJhY21lLWhkZjUvMS4xNC4wIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmZ1bGxOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmxvYWRPcmRlciA9IDExLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImFjbWUtbmV0Y2RmLzQuNy40Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtbmV0Y2RmLzQuNy40L2FjbWUiLApmdWxsTmFtZSA9;
export _ModuleTable003_;
_ModuleTable004_=ICJhY21lLW5ldGNkZi80LjcuNC9hY21lIiwKbG9hZE9yZGVyID0gMTIsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiYWNtZS1uZXRjZGYvNC43LjQvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImF1ZS9weXRob24iXSA9IHsKZm4gPSAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzL2F1ZS9weXRob24vMy4xMS42IiwKZnVsbE5hbWUgPSAiYXVlL3B5dGhvbi8zLjExLjYiLApsb2FkT3JkZXIgPSAyLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKd1YgPSAiMDAwMDAwMDAzLjAwMDAwMDAxMS4wMDAw;
export _ModuleTable004_;
_ModuleTable005_=MDAwMDYuKnpmaW5hbCIsCn0sCmdudSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvZ251LzEwLjMuMSIsCmZ1bGxOYW1lID0gImdudS8xMC4zLjEiLApsb2FkT3JkZXIgPSA1LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImdudS8xMC4zLjEiLAp3ViA9ICIwMDAwMDAwMTAuMDAwMDAwMDAzLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKaW50ZWwgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvaW50ZWwvMjEuMy4wIiwKZnVsbE5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKbG9hZE9yZGVyID0gNiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1;
export _ModuleTable005_;
_ModuleTable006_=c2VyTmFtZSA9ICJpbnRlbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApta2wgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvbWtsLzIxLjMuMCIsCmZ1bGxOYW1lID0gIm1rbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA3LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gIm1rbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbIm9wZW5tcGktaW50ZWwiXSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvb3Blbm1waS1pbnRlbC80LjEiLApmdWxsTmFtZSA9ICJvcGVubXBpLWludGVsLzQuMSIsCmxvYWRP;
export _ModuleTable006_;
_ModuleTable007_=cmRlciA9IDksCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAib3Blbm1waS1pbnRlbC80LjEiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1jbWFrZSJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eS9zZW1zLWFyY2hpdmUtY21ha2UvMy4xOS4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmxvYWRPcmRlciA9IDQsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtl;
export _ModuleTable007_;
_ModuleTable008_=LzMuMTkuMSIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTkuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1naXQiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApmdWxsTmFtZSA9ICJzZW1zLWFyY2hpdmUtZ2l0LzIuMTAuMSIsCmxvYWRPcmRlciA9IDMsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdCIsCndWID0gIjAwMDAwMDAwMi4wMDAwMDAwMTAuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0g;
export _ModuleTable008_;
_ModuleTable009_=ewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1vcGVubXBpIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlci9zZW1z;
export _ModuleTable009_;
_ModuleTable010_=LWFyY2hpdmUtb3Blbm1waS80LjEuNCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1vcGVubXBpLzQuMS40IiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW9wZW5tcGkvNC4xLjQiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLjAwMDAwMDAwNC4qemZpbmFsIiwKfSwKfSwKbXBhdGhBID0gewoiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlciIKLCAiL3Byb2plY3RzL3NlbXMv;
export _ModuleTable010_;
_ModuleTable011_=YWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2EvYWNtZS90cGwiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcyIsICIvb3B0L3Rvc3Mv;
export _ModuleTable011_;
_ModuleTable012_=bW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9kL2xtb2QvbW9kdWxlZmlsZXMvQ29y;
export _ModuleTable012_;
_ModuleTable013_=ZSIsCn0K;
export _ModuleTable013_;
_ModuleTable_Sz_=13;
export _ModuleTable_Sz_;'
BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
+++ BLASLIB='-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm'
export BLASLIB;
+++ export BLASLIB
CC=icc;
+++ CC=icc
export CC;
+++ export CC
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
+++ __LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
+++ CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva
export CMAKE_PREFIX_PATH;
+++ export CMAKE_PREFIX_PATH
__LMOD_REF_COUNT_CPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:1\;/opt/toss/openmpi/4.1/intel/include:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1;
+++ __LMOD_REF_COUNT_CPATH='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:1;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:1;/opt/toss/openmpi/4.1/intel/include:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1'
export __LMOD_REF_COUNT_CPATH;
+++ export __LMOD_REF_COUNT_CPATH
CPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:/opt/toss/openmpi/4.1/intel/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ CPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include:/opt/toss/openmpi/4.1/intel/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export CPATH;
+++ export CPATH
CXX=icpc;
+++ CXX=icpc
export CXX;
+++ export CXX
F77=ifort;
+++ F77=ifort
export F77;
+++ export F77
F90=ifort;
+++ F90=ifort
export F90;
+++ export F90
F95=ifort;
+++ F95=ifort
export F95;
+++ export F95
FC=ifort;
+++ FC=ifort
export FC;
+++ export FC
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
+++ GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include
export GNU_INCLUDES;
+++ export GNU_INCLUDES
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
+++ GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10
export GNU_LIBS;
+++ export GNU_LIBS
unset INTELHOME;
+++ unset INTELHOME
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
+++ __LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
+++ export __LMOD_REF_COUNT_INTEL_LICENSE_FILE
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
+++ INTEL_LICENSE_FILE=/projects/global/licenses/intel
export INTEL_LICENSE_FILE;
+++ export INTEL_LICENSE_FILE
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/opt/toss/openmpi/4.1/intel/lib:1\;/usr/lib64/nvidia:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
+++ __LMOD_REF_COUNT_LD_LIBRARY_PATH='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1;/opt/toss/openmpi/4.1/intel/lib:1;/usr/lib64/nvidia:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1;/opt/rh/gcc-toolset-10/root/usr/lib64:1;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3'
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LD_LIBRARY_PATH
LD_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/opt/toss/openmpi/4.1/intel/lib:/usr/lib64/nvidia:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
+++ LD_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/opt/toss/openmpi/4.1/intel/lib:/usr/lib64/nvidia:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib
export LD_LIBRARY_PATH;
+++ export LD_LIBRARY_PATH
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
+++ __LMOD_REF_COUNT_LIBRARY_PATH='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:1;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1'
export __LMOD_REF_COUNT_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LIBRARY_PATH
LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
+++ LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib
export LIBRARY_PATH;
+++ export LIBRARY_PATH
LMOD_FAMILY_MPI=openmpi-intel;
+++ LMOD_FAMILY_MPI=openmpi-intel
export LMOD_FAMILY_MPI;
+++ export LMOD_FAMILY_MPI
LMOD_FAMILY_MPI_VERSION=4.1;
+++ LMOD_FAMILY_MPI_VERSION=4.1
export LMOD_FAMILY_MPI_VERSION;
+++ export LMOD_FAMILY_MPI_VERSION
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:openmpi-intel/4.1:sems-archive-openmpi/4.1.4:acme-hdf5/1.14.0/acme:acme-netcdf/4.7.4/acme;
+++ LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:openmpi-intel/4.1:sems-archive-openmpi/4.1.4:acme-hdf5/1.14.0/acme:acme-netcdf/4.7.4/acme
export LOADEDMODULES;
+++ export LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:1\;/opt/toss/openmpi/4.1/intel/man:1\;/opt/toss/openmpi/4.1/intel/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:1;/opt/toss/openmpi/4.1/intel/man:1;/opt/toss/openmpi/4.1/intel/share/man:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1;/opt/rh/gcc-toolset-10/root/usr/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1;/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:/opt/toss/openmpi/4.1/intel/man:/opt/toss/openmpi/4.1/intel/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/share/man:/opt/toss/openmpi/4.1/intel/man:/opt/toss/openmpi/4.1/intel/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLHOME;
+++ export MKLHOME
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLROOT;
+++ export MKLROOT
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDE;
+++ export MKL_INCLUDE
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDES;
+++ export MKL_INCLUDES
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIB;
+++ export MKL_LIB
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIBS;
+++ export MKL_LIBS
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1;/projects/sems/acme-boca-modulefiles/env-module:1;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
MPICC=mpicc;
+++ MPICC=mpicc
export MPICC;
+++ export MPICC
MPICH_MPI=openmpi-4.1-intel-4.1.8;
+++ MPICH_MPI=openmpi-4.1-intel-4.1.8
export MPICH_MPI;
+++ export MPICH_MPI
MPICXX=mpicxx;
+++ MPICXX=mpicxx
export MPICXX;
+++ export MPICXX
MPIF77=mpif77;
+++ MPIF77=mpif77
export MPIF77;
+++ export MPIF77
MPIF90=mpif90;
+++ MPIF90=mpif90
export MPIF90;
+++ export MPIF90
MPIFC=mpif90;
+++ MPIFC=mpif90
export MPIFC;
+++ export MPIFC
MPIHOME=/opt/toss/openmpi/4.1/intel;
+++ MPIHOME=/opt/toss/openmpi/4.1/intel
export MPIHOME;
+++ export MPIHOME
MPIROOT=/opt/toss/openmpi/4.1/intel;
+++ MPIROOT=/opt/toss/openmpi/4.1/intel
export MPIROOT;
+++ export MPIROOT
MPI_HOME=/opt/toss/openmpi/4.1/intel;
+++ MPI_HOME=/opt/toss/openmpi/4.1/intel
export MPI_HOME;
+++ export MPI_HOME
MPI_NAME=openmpi-4.1-intel;
+++ MPI_NAME=openmpi-4.1-intel
export MPI_NAME;
+++ export MPI_NAME
MPI_ROOT=/opt/toss/openmpi/4.1/intel;
+++ MPI_ROOT=/opt/toss/openmpi/4.1/intel
export MPI_ROOT;
+++ export MPI_ROOT
MPI_VERSION=4.1.8;
+++ MPI_VERSION=4.1.8
export MPI_VERSION;
+++ export MPI_VERSION
OMP_NUM_THREADS=1;
+++ OMP_NUM_THREADS=1
export OMP_NUM_THREADS;
+++ export OMP_NUM_THREADS
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:1\;/opt/toss/openmpi/4.1/intel/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:1;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:1;/opt/toss/openmpi/4.1/intel/bin:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1;/opt/rh/gcc-toolset-10/root/usr/bin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:/opt/toss/openmpi/4.1/intel/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/bin:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/bin:/opt/toss/openmpi/4.1/intel/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
+++ __LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ export __LMOD_REF_COUNT_PKG_CONFIG_PATH
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
+++ PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig
export PKG_CONFIG_PATH;
+++ export PKG_CONFIG_PATH
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
+++ export SEMS_CMAKE_LOCAL_COMPILER_VERSION
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_MPI_VERSION;
+++ export SEMS_CMAKE_LOCAL_MPI_VERSION
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
+++ SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1
export SEMS_CMAKE_ROOT;
+++ export SEMS_CMAKE_ROOT
SEMS_CMAKE_VERSION=3.19.1;
+++ SEMS_CMAKE_VERSION=3.19.1
export SEMS_CMAKE_VERSION;
+++ export SEMS_CMAKE_VERSION
SEMS_COMPILER_NAME=intel;
+++ SEMS_COMPILER_NAME=intel
export SEMS_COMPILER_NAME;
+++ export SEMS_COMPILER_NAME
SEMS_COMPILER_VERSION=21.3.0;
+++ SEMS_COMPILER_VERSION=21.3.0
export SEMS_COMPILER_VERSION;
+++ export SEMS_COMPILER_VERSION
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_COMPILER_VERSION;
+++ export SEMS_GIT_LOCAL_COMPILER_VERSION
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_MPI_VERSION;
+++ export SEMS_GIT_LOCAL_MPI_VERSION
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
+++ SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1
export SEMS_GIT_ROOT;
+++ export SEMS_GIT_ROOT
SEMS_GIT_VERSION=2.10.1;
+++ SEMS_GIT_VERSION=2.10.1
export SEMS_GIT_VERSION;
+++ export SEMS_GIT_VERSION
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include;
+++ SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/include
export SEMS_HDF5_INCLUDE_PATH;
+++ export SEMS_HDF5_INCLUDE_PATH
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib;
+++ SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme/lib
export SEMS_HDF5_LIBRARY_PATH;
+++ export SEMS_HDF5_LIBRARY_PATH
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
+++ export SEMS_HDF5_LOCAL_COMPILER_VERSION
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_MPI_VERSION;
+++ export SEMS_HDF5_LOCAL_MPI_VERSION
SEMS_HDF5_ROOT=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme;
+++ SEMS_HDF5_ROOT=/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/intel/21.3.0/openmpi/4.1.4/acme
export SEMS_HDF5_ROOT;
+++ export SEMS_HDF5_ROOT
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
+++ SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
+++ export SEMS_INTEL_LOCAL_COMPILER_VERSION
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
+++ export SEMS_INTEL_LOCAL_PYTHON_VERSION
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,NETCDF:1\;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,HDF5:1;
+++ __LMOD_REF_COUNT_SEMS_LIBRARY_DATA='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/<COMPILER_NAME>/<COMPILER_VERSION>/<MPI_NAME>/<MPI_VERSION>/acme,NETCDF:1;/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/<COMPILER_NAME>/<COMPILER_VERSION>/<MPI_NAME>/<MPI_VERSION>/acme,HDF5:1'
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
+++ export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA
SEMS_LIBRARY_DATA=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,NETCDF:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/\<MPI_NAME\>/\<MPI_VERSION\>/acme,HDF5;
+++ SEMS_LIBRARY_DATA='/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/<COMPILER_NAME>/<COMPILER_VERSION>/<MPI_NAME>/<MPI_VERSION>/acme,NETCDF:/projects/sems/install/boca/acme/tpl/hdf5/1.14.0/<COMPILER_NAME>/<COMPILER_VERSION>/<MPI_NAME>/<MPI_VERSION>/acme,HDF5'
export SEMS_LIBRARY_DATA;
+++ export SEMS_LIBRARY_DATA
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
+++ SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles
export SEMS_MODULEFILES_ROOT;
+++ export SEMS_MODULEFILES_ROOT
SEMS_MPI_NAME=openmpi;
+++ SEMS_MPI_NAME=openmpi
export SEMS_MPI_NAME;
+++ export SEMS_MPI_NAME
SEMS_MPI_VERSION=4.1.4;
+++ SEMS_MPI_VERSION=4.1.4
export SEMS_MPI_VERSION;
+++ export SEMS_MPI_VERSION
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include;
+++ SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include
export SEMS_NETCDF_INCLUDE_PATH;
+++ export SEMS_NETCDF_INCLUDE_PATH
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib;
+++ SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib
export SEMS_NETCDF_LIBRARY_PATH;
+++ export SEMS_NETCDF_LIBRARY_PATH
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
+++ export SEMS_NETCDF_LOCAL_COMPILER_VERSION
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_MPI_VERSION;
+++ export SEMS_NETCDF_LOCAL_MPI_VERSION
SEMS_NETCDF_ROOT=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme;
+++ SEMS_NETCDF_ROOT=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
export SEMS_NETCDF_ROOT;
+++ export SEMS_NETCDF_ROOT
SEMS_OPENMPI_LOCAL_COMPILER_VERSION=4.8.5;
+++ SEMS_OPENMPI_LOCAL_COMPILER_VERSION=4.8.5
export SEMS_OPENMPI_LOCAL_COMPILER_VERSION;
+++ export SEMS_OPENMPI_LOCAL_COMPILER_VERSION
SEMS_OPENMPI_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_OPENMPI_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_OPENMPI_LOCAL_PYTHON_VERSION;
+++ export SEMS_OPENMPI_LOCAL_PYTHON_VERSION
SEMS_PLATFORM=boca;
+++ SEMS_PLATFORM=boca
export SEMS_PLATFORM;
+++ export SEMS_PLATFORM
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/opt/toss/modules/modulefiles/openmpi-intel/4.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-openmpi/4.1.4:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-hdf5/1.14.0/acme:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-netcdf/4.7.4/acme;
+++ _LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/opt/toss/modules/modulefiles/openmpi-intel/4.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-openmpi/4.1.4:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-hdf5/1.14.0/acme:/projects/sems/acme-boca-modulefiles/boca/acme/tpl/acme-netcdf/4.7.4/acme
export _LMFILES_;
+++ export _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0gewptcGkgPSAib3Blbm1waS1pbnRlbCIsCn0sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwi;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0gewptcGkgPSAib3Blbm1waS1pbnRlbCIsCn0sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwi
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=L3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwK;
+++ _ModuleTable002_=L3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwK
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=WyJhY21lLWhkZjUvMS4xNC4wIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmZ1bGxOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmxvYWRPcmRlciA9IDExLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImFjbWUtbmV0Y2RmLzQuNy40Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtbmV0Y2RmLzQuNy40L2FjbWUiLApmdWxsTmFtZSA9;
+++ _ModuleTable003_=WyJhY21lLWhkZjUvMS4xNC4wIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmZ1bGxOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCmxvYWRPcmRlciA9IDExLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImFjbWUtaGRmNS8xLjE0LjAvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImFjbWUtbmV0Y2RmLzQuNy40Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL2FjbWUvdHBsL2FjbWUtbmV0Y2RmLzQuNy40L2FjbWUiLApmdWxsTmFtZSA9
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable004_=ICJhY21lLW5ldGNkZi80LjcuNC9hY21lIiwKbG9hZE9yZGVyID0gMTIsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiYWNtZS1uZXRjZGYvNC43LjQvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImF1ZS9weXRob24iXSA9IHsKZm4gPSAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzL2F1ZS9weXRob24vMy4xMS42IiwKZnVsbE5hbWUgPSAiYXVlL3B5dGhvbi8zLjExLjYiLApsb2FkT3JkZXIgPSAyLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKd1YgPSAiMDAwMDAwMDAzLjAwMDAwMDAxMS4wMDAw;
+++ _ModuleTable004_=ICJhY21lLW5ldGNkZi80LjcuNC9hY21lIiwKbG9hZE9yZGVyID0gMTIsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiYWNtZS1uZXRjZGYvNC43LjQvYWNtZSIsCndWID0gIiphY21lLip6ZmluYWwiLAp9LApbImF1ZS9weXRob24iXSA9IHsKZm4gPSAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzL2F1ZS9weXRob24vMy4xMS42IiwKZnVsbE5hbWUgPSAiYXVlL3B5dGhvbi8zLjExLjYiLApsb2FkT3JkZXIgPSAyLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKd1YgPSAiMDAwMDAwMDAzLjAwMDAwMDAxMS4wMDAw
export _ModuleTable004_;
+++ export _ModuleTable004_
_ModuleTable005_=MDAwMDYuKnpmaW5hbCIsCn0sCmdudSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvZ251LzEwLjMuMSIsCmZ1bGxOYW1lID0gImdudS8xMC4zLjEiLApsb2FkT3JkZXIgPSA1LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImdudS8xMC4zLjEiLAp3ViA9ICIwMDAwMDAwMTAuMDAwMDAwMDAzLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKaW50ZWwgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvaW50ZWwvMjEuMy4wIiwKZnVsbE5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKbG9hZE9yZGVyID0gNiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1;
+++ _ModuleTable005_=MDAwMDYuKnpmaW5hbCIsCn0sCmdudSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvZ251LzEwLjMuMSIsCmZ1bGxOYW1lID0gImdudS8xMC4zLjEiLApsb2FkT3JkZXIgPSA1LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gImdudS8xMC4zLjEiLAp3ViA9ICIwMDAwMDAwMTAuMDAwMDAwMDAzLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKaW50ZWwgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvaW50ZWwvMjEuMy4wIiwKZnVsbE5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKbG9hZE9yZGVyID0gNiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1
export _ModuleTable005_;
+++ export _ModuleTable005_
_ModuleTable006_=c2VyTmFtZSA9ICJpbnRlbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApta2wgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvbWtsLzIxLjMuMCIsCmZ1bGxOYW1lID0gIm1rbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA3LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gIm1rbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbIm9wZW5tcGktaW50ZWwiXSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvb3Blbm1waS1pbnRlbC80LjEiLApmdWxsTmFtZSA9ICJvcGVubXBpLWludGVsLzQuMSIsCmxvYWRP;
+++ _ModuleTable006_=c2VyTmFtZSA9ICJpbnRlbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApta2wgPSB7CmZuID0gIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMvbWtsLzIxLjMuMCIsCmZ1bGxOYW1lID0gIm1rbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA3LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMSwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gIm1rbC8yMS4zLjAiLAp3ViA9ICJeMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbIm9wZW5tcGktaW50ZWwiXSA9IHsKZm4gPSAiL29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXMvb3Blbm1waS1pbnRlbC80LjEiLApmdWxsTmFtZSA9ICJvcGVubXBpLWludGVsLzQuMSIsCmxvYWRP
export _ModuleTable006_;
+++ export _ModuleTable006_
_ModuleTable007_=cmRlciA9IDksCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAib3Blbm1waS1pbnRlbC80LjEiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1jbWFrZSJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eS9zZW1zLWFyY2hpdmUtY21ha2UvMy4xOS4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmxvYWRPcmRlciA9IDQsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtl;
+++ _ModuleTable007_=cmRlciA9IDksCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAib3Blbm1waS1pbnRlbC80LjEiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1jbWFrZSJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eS9zZW1zLWFyY2hpdmUtY21ha2UvMy4xOS4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmxvYWRPcmRlciA9IDQsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWNtYWtl
export _ModuleTable007_;
+++ export _ModuleTable007_
_ModuleTable008_=LzMuMTkuMSIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTkuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1naXQiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApmdWxsTmFtZSA9ICJzZW1zLWFyY2hpdmUtZ2l0LzIuMTAuMSIsCmxvYWRPcmRlciA9IDMsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdCIsCndWID0gIjAwMDAwMDAwMi4wMDAwMDAwMTAuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0g;
+++ _ModuleTable008_=LzMuMTkuMSIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTkuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1naXQiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApmdWxsTmFtZSA9ICJzZW1zLWFyY2hpdmUtZ2l0LzIuMTAuMSIsCmxvYWRPcmRlciA9IDMsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdCIsCndWID0gIjAwMDAwMDAwMi4wMDAwMDAwMTAuMDAwMDAwMDAxLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0g
export _ModuleTable008_;
+++ export _ModuleTable008_
_ModuleTable009_=ewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1vcGVubXBpIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlci9zZW1z;
+++ _ModuleTable009_=ewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1vcGVubXBpIl0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlci9zZW1z
export _ModuleTable009_;
+++ export _ModuleTable009_
_ModuleTable010_=LWFyY2hpdmUtb3Blbm1waS80LjEuNCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1vcGVubXBpLzQuMS40IiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW9wZW5tcGkvNC4xLjQiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLjAwMDAwMDAwNC4qemZpbmFsIiwKfSwKfSwKbXBhdGhBID0gewoiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlciIKLCAiL3Byb2plY3RzL3NlbXMv;
+++ _ModuleTable010_=LWFyY2hpdmUtb3Blbm1waS80LjEuNCIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1vcGVubXBpLzQuMS40IiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAwLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW9wZW5tcGkvNC4xLjQiLAp3ViA9ICIwMDAwMDAwMDQuMDAwMDAwMDAxLjAwMDAwMDAwNC4qemZpbmFsIiwKfSwKfSwKbXBhdGhBID0gewoiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS9jb21waWxlciIKLCAiL3Byb2plY3RzL3NlbXMv
export _ModuleTable010_;
+++ export _ModuleTable010_
_ModuleTable011_=YWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2EvYWNtZS90cGwiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcyIsICIvb3B0L3Rvc3Mv;
+++ _ModuleTable011_=YWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2EvYWNtZS90cGwiCiwgIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcyIsICIvb3B0L3Rvc3Mv
export _ModuleTable011_;
+++ export _ModuleTable011_
_ModuleTable012_=bW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9kL2xtb2QvbW9kdWxlZmlsZXMvQ29y;
+++ _ModuleTable012_=bW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9kL2xtb2QvbW9kdWxlZmlsZXMvQ29y
export _ModuleTable012_;
+++ export _ModuleTable012_
_ModuleTable013_=ZSIsCn0K;
+++ _ModuleTable013_=ZSIsCn0K
export _ModuleTable013_;
+++ export _ModuleTable013_
_ModuleTable_Sz_=13;
+++ _ModuleTable_Sz_=13
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
++ export NETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ NETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ export NETCDF_INCLUDES=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include
++ NETCDF_INCLUDES=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/include
++ export NETCDF_LIBS=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib
++ NETCDF_LIBS=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme/lib
++ export OMP_STACKSIZE=64M
++ OMP_STACKSIZE=64M
++ export PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ PNETCDF_PATH=/projects/sems/install/boca/acme/tpl/netcdf/4.7.4/intel/21.3.0/openmpi/4.1.4/acme
++ export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
${e3sm_root}/cime/CIME/scripts/configure --macros-format Makefile --mpilib mpi-serial
+ /ascldap/users/smturbe/codes/e3sm/cirrus-cloud-thinning/cime/CIME/scripts/configure --macros-format Makefile --mpilib mpi-serial
source .env_mach_specific.sh
+ source .env_mach_specific.sh
# This file is for user convenience only and is not used by the model
# Changes to this file will be ignored and overwritten
# Changes to the environment should be made in env_mach_specific.xml
# Run ./case.setup --reset to regenerate this file
. /usr/share/lmod/lmod/init/sh
++ . /usr/share/lmod/lmod/init/sh

LMOD_ROOT="/usr/share/lmod"
+++ LMOD_ROOT=/usr/share/lmod
LMOD_PKG="/usr/share/lmod/lmod"
+++ LMOD_PKG=/usr/share/lmod/lmod
LMOD_DIR="/usr/share/lmod/lmod/libexec"
+++ LMOD_DIR=/usr/share/lmod/lmod/libexec
LMOD_CMD="/usr/share/lmod/lmod/libexec/lmod"
+++ LMOD_CMD=/usr/share/lmod/lmod/libexec/lmod
MODULESHOME="/usr/share/lmod/lmod"
+++ MODULESHOME=/usr/share/lmod/lmod

export LMOD_CMD
+++ export LMOD_CMD
export LMOD_PKG
+++ export LMOD_PKG
export LMOD_DIR
+++ export LMOD_DIR
export MODULESHOME
+++ export MODULESHOME

module()
{
  eval "`$LMOD_CMD sh "$@"`"
}

clearMT()
{
  eval $($LMOD_DIR/clearLMOD_cmd --shell bash --simple)
}

########################################################################
#  ml is a shorthand tool for people who can't type moduel, err, module
#  It is also a combination command:
#     ml            -> module list
#     ml gcc        -> module load gcc
#     ml -gcc intel -> module unload gcc; module load intel
#  It does much more do: "ml --help" for more information.
ml()
{
  eval "$($LMOD_DIR/ml_cmd "$@")"
}

# Local Variables:
# mode: shell-script
# indent-tabs-mode: nil
# End:
module purge 
++ module purge
+++ /usr/share/lmod/lmod/libexec/lmod sh purge
++ eval 'unset BLASLIB;
unset CC;
unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
unset CMAKE_PREFIX_PATH;
unset CPATH;
unset CXX;
unset F77;
unset F90;
unset F95;
unset FC;
unset GNU_INCLUDES;
unset GNU_LIBS;
unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
unset INTEL_LICENSE_FILE;
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
export LD_LIBRARY_PATH;
unset __LMOD_REF_COUNT_LIBRARY_PATH;
unset LIBRARY_PATH;
unset LMOD_FAMILY_MPI;
unset LMOD_FAMILY_MPI_VERSION;
unset LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/usr/share/lmod/lmod/share/man::;
export MANPATH;
unset MKLHOME;
unset MKLROOT;
unset MKL_INCLUDE;
unset MKL_INCLUDES;
unset MKL_LIB;
unset MKL_LIBS;
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
unset MPICC;
unset MPICH_MPI;
unset MPICXX;
unset MPIF77;
unset MPIF90;
unset MPIFC;
unset MPIHOME;
unset MPIROOT;
unset MPI_HOME;
unset MPI_NAME;
unset MPI_ROOT;
unset MPI_VERSION;
unset OMP_NUM_THREADS;
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
unset PKG_CONFIG_PATH;
unset SEMS_CMAKE_ROOT;
unset SEMS_CMAKE_VERSION;
unset SEMS_COMPILER_NAME;
unset SEMS_COMPILER_VERSION;
unset SEMS_GIT_ROOT;
unset SEMS_GIT_VERSION;
unset SEMS_HDF5_INCLUDE_PATH;
unset SEMS_HDF5_LIBRARY_PATH;
unset SEMS_HDF5_ROOT;
unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
unset SEMS_LIBRARY_DATA;
unset SEMS_MODULEFILES_ROOT;
unset SEMS_MPI_NAME;
unset SEMS_MPI_VERSION;
unset SEMS_NETCDF_INCLUDE_PATH;
unset SEMS_NETCDF_LIBRARY_PATH;
unset SEMS_NETCDF_ROOT;
unset SEMS_PLATFORM;
unset _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
export _ModuleTable001_;
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
export _ModuleTable002_;
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
export _ModuleTable003_;
_ModuleTable_Sz_=3;
export _ModuleTable_Sz_;
unset _ModuleTable005_;
unset _ModuleTable006_;
unset _ModuleTable007_;
unset _ModuleTable008_;
unset _ModuleTable009_;
unset _ModuleTable010_;
unset _ModuleTable011_;
unset _ModuleTable012_;
unset _ModuleTable013_;'
unset BLASLIB;
+++ unset BLASLIB
unset CC;
+++ unset CC
unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
unset CMAKE_PREFIX_PATH;
+++ unset CMAKE_PREFIX_PATH
unset CPATH;
+++ unset CPATH
unset CXX;
+++ unset CXX
unset F77;
+++ unset F77
unset F90;
+++ unset F90
unset F95;
+++ unset F95
unset FC;
+++ unset FC
unset GNU_INCLUDES;
+++ unset GNU_INCLUDES
unset GNU_LIBS;
+++ unset GNU_LIBS
unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
+++ unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE
unset INTEL_LICENSE_FILE;
+++ unset INTEL_LICENSE_FILE
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
+++ __LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LD_LIBRARY_PATH
LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
+++ LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib
export LD_LIBRARY_PATH;
+++ export LD_LIBRARY_PATH
unset __LMOD_REF_COUNT_LIBRARY_PATH;
+++ unset __LMOD_REF_COUNT_LIBRARY_PATH
unset LIBRARY_PATH;
+++ unset LIBRARY_PATH
unset LMOD_FAMILY_MPI;
+++ unset LMOD_FAMILY_MPI
unset LMOD_FAMILY_MPI_VERSION;
+++ unset LMOD_FAMILY_MPI_VERSION
unset LOADEDMODULES;
+++ unset LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
unset MKLHOME;
+++ unset MKLHOME
unset MKLROOT;
+++ unset MKLROOT
unset MKL_INCLUDE;
+++ unset MKL_INCLUDE
unset MKL_INCLUDES;
+++ unset MKL_INCLUDES
unset MKL_LIB;
+++ unset MKL_LIB
unset MKL_LIBS;
+++ unset MKL_LIBS
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:1\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/env-module:1;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
unset MPICC;
+++ unset MPICC
unset MPICH_MPI;
+++ unset MPICH_MPI
unset MPICXX;
+++ unset MPICXX
unset MPIF77;
+++ unset MPIF77
unset MPIF90;
+++ unset MPIF90
unset MPIFC;
+++ unset MPIFC
unset MPIHOME;
+++ unset MPIHOME
unset MPIROOT;
+++ unset MPIROOT
unset MPI_HOME;
+++ unset MPI_HOME
unset MPI_NAME;
+++ unset MPI_NAME
unset MPI_ROOT;
+++ unset MPI_ROOT
unset MPI_VERSION;
+++ unset MPI_VERSION
unset OMP_NUM_THREADS;
+++ unset OMP_NUM_THREADS
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ unset __LMOD_REF_COUNT_PKG_CONFIG_PATH
unset PKG_CONFIG_PATH;
+++ unset PKG_CONFIG_PATH
unset SEMS_CMAKE_ROOT;
+++ unset SEMS_CMAKE_ROOT
unset SEMS_CMAKE_VERSION;
+++ unset SEMS_CMAKE_VERSION
unset SEMS_COMPILER_NAME;
+++ unset SEMS_COMPILER_NAME
unset SEMS_COMPILER_VERSION;
+++ unset SEMS_COMPILER_VERSION
unset SEMS_GIT_ROOT;
+++ unset SEMS_GIT_ROOT
unset SEMS_GIT_VERSION;
+++ unset SEMS_GIT_VERSION
unset SEMS_HDF5_INCLUDE_PATH;
+++ unset SEMS_HDF5_INCLUDE_PATH
unset SEMS_HDF5_LIBRARY_PATH;
+++ unset SEMS_HDF5_LIBRARY_PATH
unset SEMS_HDF5_ROOT;
+++ unset SEMS_HDF5_ROOT
unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
+++ unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA
unset SEMS_LIBRARY_DATA;
+++ unset SEMS_LIBRARY_DATA
unset SEMS_MODULEFILES_ROOT;
+++ unset SEMS_MODULEFILES_ROOT
unset SEMS_MPI_NAME;
+++ unset SEMS_MPI_NAME
unset SEMS_MPI_VERSION;
+++ unset SEMS_MPI_VERSION
unset SEMS_NETCDF_INCLUDE_PATH;
+++ unset SEMS_NETCDF_INCLUDE_PATH
unset SEMS_NETCDF_LIBRARY_PATH;
+++ unset SEMS_NETCDF_LIBRARY_PATH
unset SEMS_NETCDF_ROOT;
+++ unset SEMS_NETCDF_ROOT
unset SEMS_PLATFORM;
+++ unset SEMS_PLATFORM
unset _LMFILES_;
+++ unset _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
+++ _ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
+++ _ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable_Sz_=3;
+++ _ModuleTable_Sz_=3
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
unset _ModuleTable005_;
+++ unset _ModuleTable005_
unset _ModuleTable006_;
+++ unset _ModuleTable006_
unset _ModuleTable007_;
+++ unset _ModuleTable007_
unset _ModuleTable008_;
+++ unset _ModuleTable008_
unset _ModuleTable009_;
+++ unset _ModuleTable009_
unset _ModuleTable010_;
+++ unset _ModuleTable010_
unset _ModuleTable011_;
+++ unset _ModuleTable011_
unset _ModuleTable012_;
+++ unset _ModuleTable012_
unset _ModuleTable013_;
+++ unset _ModuleTable013_
module use /projects/sems/acme-boca-modulefiles/env-module
++ module use /projects/sems/acme-boca-modulefiles/env-module
+++ /usr/share/lmod/lmod/libexec/lmod sh use /projects/sems/acme-boca-modulefiles/env-module
++ eval '__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
export _ModuleTable001_;
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
export _ModuleTable002_;
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
export _ModuleTable003_;
_ModuleTable_Sz_=3;
export _ModuleTable_Sz_;'
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/env-module:2;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
+++ _ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
+++ _ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable_Sz_=3;
+++ _ModuleTable_Sz_=3
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
++ module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
+++ /usr/share/lmod/lmod/libexec/lmod sh load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
++ eval 'BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
export BLASLIB;
CC=icc;
export CC;
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
export CMAKE_PREFIX_PATH;
__LMOD_REF_COUNT_CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1;
export __LMOD_REF_COUNT_CPATH;
CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export CPATH;
CXX=icpc;
export CXX;
F77=ifort;
export F77;
F90=ifort;
export F90;
F95=ifort;
export F95;
FC=ifort;
export FC;
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
export GNU_INCLUDES;
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
export GNU_LIBS;
unset INTELHOME;
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
export INTEL_LICENSE_FILE;
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
export LD_LIBRARY_PATH;
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
export __LMOD_REF_COUNT_LIBRARY_PATH;
LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
export LIBRARY_PATH;
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo;
export LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
export MANPATH;
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLHOME;
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLROOT;
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDE;
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDES;
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIB;
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIBS;
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
OMP_NUM_THREADS=1;
export OMP_NUM_THREADS;
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
export PKG_CONFIG_PATH;
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_MPI_VERSION;
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
export SEMS_CMAKE_ROOT;
SEMS_CMAKE_VERSION=3.19.1;
export SEMS_CMAKE_VERSION;
SEMS_COMPILER_NAME=intel;
export SEMS_COMPILER_NAME;
SEMS_COMPILER_VERSION=21.3.0;
export SEMS_COMPILER_VERSION;
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_COMPILER_VERSION;
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_MPI_VERSION;
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
export SEMS_GIT_ROOT;
SEMS_GIT_VERSION=2.10.1;
export SEMS_GIT_VERSION;
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include;
export SEMS_HDF5_INCLUDE_PATH;
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib;
export SEMS_HDF5_LIBRARY_PATH;
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_MPI_VERSION;
SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base;
export SEMS_HDF5_ROOT;
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5:1;
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5;
export SEMS_LIBRARY_DATA;
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
export SEMS_MODULEFILES_ROOT;
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include;
export SEMS_NETCDF_INCLUDE_PATH;
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib;
export SEMS_NETCDF_LIBRARY_PATH;
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_MPI_VERSION;
SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo;
export SEMS_NETCDF_ROOT;
SEMS_PLATFORM=boca;
export SEMS_PLATFORM;
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo;
export _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh;
export _ModuleTable001_;
_ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g;
export _ModuleTable002_;
_ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn;
export _ModuleTable003_;
_ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE;
export _ModuleTable004_;
_ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5;
export _ModuleTable005_;
_ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i;
export _ModuleTable006_;
_ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl;
export _ModuleTable007_;
_ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw;
export _ModuleTable008_;
_ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v;
export _ModuleTable009_;
_ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls;
export _ModuleTable010_;
_ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
export _ModuleTable011_;
_ModuleTable_Sz_=11;
export _ModuleTable_Sz_;'
BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
+++ BLASLIB='-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm'
export BLASLIB;
+++ export BLASLIB
CC=icc;
+++ CC=icc
export CC;
+++ export CC
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
+++ __LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
+++ CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva
export CMAKE_PREFIX_PATH;
+++ export CMAKE_PREFIX_PATH
__LMOD_REF_COUNT_CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1;
+++ __LMOD_REF_COUNT_CPATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include:1'
export __LMOD_REF_COUNT_CPATH;
+++ export __LMOD_REF_COUNT_CPATH
CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export CPATH;
+++ export CPATH
CXX=icpc;
+++ CXX=icpc
export CXX;
+++ export CXX
F77=ifort;
+++ F77=ifort
export F77;
+++ export F77
F90=ifort;
+++ F90=ifort
export F90;
+++ export F90
F95=ifort;
+++ F95=ifort
export F95;
+++ export F95
FC=ifort;
+++ FC=ifort
export FC;
+++ export FC
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
+++ GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include
export GNU_INCLUDES;
+++ export GNU_INCLUDES
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
+++ GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10
export GNU_LIBS;
+++ export GNU_LIBS
unset INTELHOME;
+++ unset INTELHOME
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
+++ __LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
+++ export __LMOD_REF_COUNT_INTEL_LICENSE_FILE
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
+++ INTEL_LICENSE_FILE=/projects/global/licenses/intel
export INTEL_LICENSE_FILE;
+++ export INTEL_LICENSE_FILE
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
+++ __LMOD_REF_COUNT_LD_LIBRARY_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1;/opt/rh/gcc-toolset-10/root/usr/lib64:1;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3'
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LD_LIBRARY_PATH
LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
+++ LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib
export LD_LIBRARY_PATH;
+++ export LD_LIBRARY_PATH
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
+++ __LMOD_REF_COUNT_LIBRARY_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1'
export __LMOD_REF_COUNT_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LIBRARY_PATH
LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
+++ LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib
export LIBRARY_PATH;
+++ export LIBRARY_PATH
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo;
+++ LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo
export LOADEDMODULES;
+++ export LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1;/opt/rh/gcc-toolset-10/root/usr/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1;/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLHOME;
+++ export MKLHOME
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLROOT;
+++ export MKLROOT
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDE;
+++ export MKL_INCLUDE
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDES;
+++ export MKL_INCLUDES
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIB;
+++ export MKL_LIB
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIBS;
+++ export MKL_LIBS
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1;/projects/sems/acme-boca-modulefiles/env-module:2;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
OMP_NUM_THREADS=1;
+++ OMP_NUM_THREADS=1
export OMP_NUM_THREADS;
+++ export OMP_NUM_THREADS
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1;/opt/rh/gcc-toolset-10/root/usr/bin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
+++ __LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ export __LMOD_REF_COUNT_PKG_CONFIG_PATH
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
+++ PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig
export PKG_CONFIG_PATH;
+++ export PKG_CONFIG_PATH
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
+++ export SEMS_CMAKE_LOCAL_COMPILER_VERSION
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_MPI_VERSION;
+++ export SEMS_CMAKE_LOCAL_MPI_VERSION
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
+++ SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1
export SEMS_CMAKE_ROOT;
+++ export SEMS_CMAKE_ROOT
SEMS_CMAKE_VERSION=3.19.1;
+++ SEMS_CMAKE_VERSION=3.19.1
export SEMS_CMAKE_VERSION;
+++ export SEMS_CMAKE_VERSION
SEMS_COMPILER_NAME=intel;
+++ SEMS_COMPILER_NAME=intel
export SEMS_COMPILER_NAME;
+++ export SEMS_COMPILER_NAME
SEMS_COMPILER_VERSION=21.3.0;
+++ SEMS_COMPILER_VERSION=21.3.0
export SEMS_COMPILER_VERSION;
+++ export SEMS_COMPILER_VERSION
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_COMPILER_VERSION;
+++ export SEMS_GIT_LOCAL_COMPILER_VERSION
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_MPI_VERSION;
+++ export SEMS_GIT_LOCAL_MPI_VERSION
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
+++ SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1
export SEMS_GIT_ROOT;
+++ export SEMS_GIT_ROOT
SEMS_GIT_VERSION=2.10.1;
+++ SEMS_GIT_VERSION=2.10.1
export SEMS_GIT_VERSION;
+++ export SEMS_GIT_VERSION
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include;
+++ SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include
export SEMS_HDF5_INCLUDE_PATH;
+++ export SEMS_HDF5_INCLUDE_PATH
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib;
+++ SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib
export SEMS_HDF5_LIBRARY_PATH;
+++ export SEMS_HDF5_LIBRARY_PATH
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
+++ export SEMS_HDF5_LOCAL_COMPILER_VERSION
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_MPI_VERSION;
+++ export SEMS_HDF5_LOCAL_MPI_VERSION
SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base;
+++ SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base
export SEMS_HDF5_ROOT;
+++ export SEMS_HDF5_ROOT
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
+++ SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
+++ export SEMS_INTEL_LOCAL_COMPILER_VERSION
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
+++ export SEMS_INTEL_LOCAL_PYTHON_VERSION
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5:1;
+++ __LMOD_REF_COUNT_SEMS_LIBRARY_DATA='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/<COMPILER_NAME>/<COMPILER_VERSION>/exo,NETCDF:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/<COMPILER_NAME>/<COMPILER_VERSION>/base,HDF5:1'
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
+++ export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA
SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5;
+++ SEMS_LIBRARY_DATA='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/<COMPILER_NAME>/<COMPILER_VERSION>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/<COMPILER_NAME>/<COMPILER_VERSION>/base,HDF5'
export SEMS_LIBRARY_DATA;
+++ export SEMS_LIBRARY_DATA
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
+++ SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles
export SEMS_MODULEFILES_ROOT;
+++ export SEMS_MODULEFILES_ROOT
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include;
+++ SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
export SEMS_NETCDF_INCLUDE_PATH;
+++ export SEMS_NETCDF_INCLUDE_PATH
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib;
+++ SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
export SEMS_NETCDF_LIBRARY_PATH;
+++ export SEMS_NETCDF_LIBRARY_PATH
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
+++ export SEMS_NETCDF_LOCAL_COMPILER_VERSION
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_MPI_VERSION;
+++ export SEMS_NETCDF_LOCAL_MPI_VERSION
SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo;
+++ SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export SEMS_NETCDF_ROOT;
+++ export SEMS_NETCDF_ROOT
SEMS_PLATFORM=boca;
+++ SEMS_PLATFORM=boca
export SEMS_PLATFORM;
+++ export SEMS_PLATFORM
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo;
+++ _LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo
export _LMFILES_;
+++ export _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g;
+++ _ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn;
+++ _ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE;
+++ _ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE
export _ModuleTable004_;
+++ export _ModuleTable004_
_ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5;
+++ _ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5
export _ModuleTable005_;
+++ export _ModuleTable005_
_ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i;
+++ _ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i
export _ModuleTable006_;
+++ export _ModuleTable006_
_ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl;
+++ _ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl
export _ModuleTable007_;
+++ export _ModuleTable007_
_ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw;
+++ _ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw
export _ModuleTable008_;
+++ export _ModuleTable008_
_ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v;
+++ _ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v
export _ModuleTable009_;
+++ export _ModuleTable009_
_ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls;
+++ _ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls
export _ModuleTable010_;
+++ export _ModuleTable010_
_ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
+++ _ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=
export _ModuleTable011_;
+++ export _ModuleTable011_
_ModuleTable_Sz_=11;
+++ _ModuleTable_Sz_=11
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
export NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ export NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ export PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
++ export NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
++ NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
export NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
++ export NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
++ NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
export OMP_STACKSIZE=64M
++ export OMP_STACKSIZE=64M
++ OMP_STACKSIZE=64M
export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel

export COMPILER=intel
++ export COMPILER=intel
++ COMPILER=intel
export MPILIB=mpi-serial
++ export MPILIB=mpi-serial
++ MPILIB=mpi-serial
export DEBUG=FALSE
++ export DEBUG=FALSE
++ DEBUG=FALSE
export OS=LINUX
++ export OS=LINUX
++ OS=LINUX

# Build gen_domain tool
#export USER_FFLAGS='-traceback -g -O0'
(. ./.env_mach_specific.sh ; gmake clean && OS=LINUX gmake)
+ . ./.env_mach_specific.sh
# This file is for user convenience only and is not used by the model
# Changes to this file will be ignored and overwritten
# Changes to the environment should be made in env_mach_specific.xml
# Run ./case.setup --reset to regenerate this file
. /usr/share/lmod/lmod/init/sh
++ . /usr/share/lmod/lmod/init/sh

LMOD_ROOT="/usr/share/lmod"
+++ LMOD_ROOT=/usr/share/lmod
LMOD_PKG="/usr/share/lmod/lmod"
+++ LMOD_PKG=/usr/share/lmod/lmod
LMOD_DIR="/usr/share/lmod/lmod/libexec"
+++ LMOD_DIR=/usr/share/lmod/lmod/libexec
LMOD_CMD="/usr/share/lmod/lmod/libexec/lmod"
+++ LMOD_CMD=/usr/share/lmod/lmod/libexec/lmod
MODULESHOME="/usr/share/lmod/lmod"
+++ MODULESHOME=/usr/share/lmod/lmod

export LMOD_CMD
+++ export LMOD_CMD
export LMOD_PKG
+++ export LMOD_PKG
export LMOD_DIR
+++ export LMOD_DIR
export MODULESHOME
+++ export MODULESHOME

module()
{
  eval "`$LMOD_CMD sh "$@"`"
}

clearMT()
{
  eval $($LMOD_DIR/clearLMOD_cmd --shell bash --simple)
}

########################################################################
#  ml is a shorthand tool for people who can't type moduel, err, module
#  It is also a combination command:
#     ml            -> module list
#     ml gcc        -> module load gcc
#     ml -gcc intel -> module unload gcc; module load intel
#  It does much more do: "ml --help" for more information.
ml()
{
  eval "$($LMOD_DIR/ml_cmd "$@")"
}

# Local Variables:
# mode: shell-script
# indent-tabs-mode: nil
# End:
module purge 
++ module purge
+++ /usr/share/lmod/lmod/libexec/lmod sh purge
++ eval 'unset BLASLIB;
unset CC;
unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
unset CMAKE_PREFIX_PATH;
unset CPATH;
unset CXX;
unset F77;
unset F90;
unset F95;
unset FC;
unset GNU_INCLUDES;
unset GNU_LIBS;
unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
unset INTEL_LICENSE_FILE;
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
export LD_LIBRARY_PATH;
unset __LMOD_REF_COUNT_LIBRARY_PATH;
unset LIBRARY_PATH;
unset LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/usr/share/lmod/lmod/share/man::;
export MANPATH;
unset MKLHOME;
unset MKLROOT;
unset MKL_INCLUDE;
unset MKL_INCLUDES;
unset MKL_LIB;
unset MKL_LIBS;
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
unset OMP_NUM_THREADS;
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
unset PKG_CONFIG_PATH;
unset SEMS_CMAKE_ROOT;
unset SEMS_CMAKE_VERSION;
unset SEMS_COMPILER_NAME;
unset SEMS_COMPILER_VERSION;
unset SEMS_GIT_ROOT;
unset SEMS_GIT_VERSION;
unset SEMS_HDF5_INCLUDE_PATH;
unset SEMS_HDF5_LIBRARY_PATH;
unset SEMS_HDF5_ROOT;
unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
unset SEMS_LIBRARY_DATA;
unset SEMS_MODULEFILES_ROOT;
unset SEMS_NETCDF_INCLUDE_PATH;
unset SEMS_NETCDF_LIBRARY_PATH;
unset SEMS_NETCDF_ROOT;
unset SEMS_PLATFORM;
unset _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
export _ModuleTable001_;
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
export _ModuleTable002_;
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
export _ModuleTable003_;
_ModuleTable_Sz_=3;
export _ModuleTable_Sz_;
unset _ModuleTable005_;
unset _ModuleTable006_;
unset _ModuleTable007_;
unset _ModuleTable008_;
unset _ModuleTable009_;
unset _ModuleTable010_;
unset _ModuleTable011_;'
unset BLASLIB;
+++ unset BLASLIB
unset CC;
+++ unset CC
unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ unset __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
unset CMAKE_PREFIX_PATH;
+++ unset CMAKE_PREFIX_PATH
unset CPATH;
+++ unset CPATH
unset CXX;
+++ unset CXX
unset F77;
+++ unset F77
unset F90;
+++ unset F90
unset F95;
+++ unset F95
unset FC;
+++ unset FC
unset GNU_INCLUDES;
+++ unset GNU_INCLUDES
unset GNU_LIBS;
+++ unset GNU_LIBS
unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
+++ unset __LMOD_REF_COUNT_INTEL_LICENSE_FILE
unset INTEL_LICENSE_FILE;
+++ unset INTEL_LICENSE_FILE
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
+++ __LMOD_REF_COUNT_LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LD_LIBRARY_PATH
LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
+++ LD_LIBRARY_PATH=/ascldap/users/smturbe/.conda/envs/smt_nco/lib
export LD_LIBRARY_PATH;
+++ export LD_LIBRARY_PATH
unset __LMOD_REF_COUNT_LIBRARY_PATH;
+++ unset __LMOD_REF_COUNT_LIBRARY_PATH
unset LIBRARY_PATH;
+++ unset LIBRARY_PATH
unset LOADEDMODULES;
+++ unset LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
unset MKLHOME;
+++ unset MKLHOME
unset MKLROOT;
+++ unset MKLROOT
unset MKL_INCLUDE;
+++ unset MKL_INCLUDE
unset MKL_INCLUDES;
+++ unset MKL_INCLUDES
unset MKL_LIB;
+++ unset MKL_LIB
unset MKL_LIBS;
+++ unset MKL_LIBS
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:2\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/env-module:2;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
unset OMP_NUM_THREADS;
+++ unset OMP_NUM_THREADS
__LMOD_REF_COUNT_PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
unset __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ unset __LMOD_REF_COUNT_PKG_CONFIG_PATH
unset PKG_CONFIG_PATH;
+++ unset PKG_CONFIG_PATH
unset SEMS_CMAKE_ROOT;
+++ unset SEMS_CMAKE_ROOT
unset SEMS_CMAKE_VERSION;
+++ unset SEMS_CMAKE_VERSION
unset SEMS_COMPILER_NAME;
+++ unset SEMS_COMPILER_NAME
unset SEMS_COMPILER_VERSION;
+++ unset SEMS_COMPILER_VERSION
unset SEMS_GIT_ROOT;
+++ unset SEMS_GIT_ROOT
unset SEMS_GIT_VERSION;
+++ unset SEMS_GIT_VERSION
unset SEMS_HDF5_INCLUDE_PATH;
+++ unset SEMS_HDF5_INCLUDE_PATH
unset SEMS_HDF5_LIBRARY_PATH;
+++ unset SEMS_HDF5_LIBRARY_PATH
unset SEMS_HDF5_ROOT;
+++ unset SEMS_HDF5_ROOT
unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
+++ unset __LMOD_REF_COUNT_SEMS_LIBRARY_DATA
unset SEMS_LIBRARY_DATA;
+++ unset SEMS_LIBRARY_DATA
unset SEMS_MODULEFILES_ROOT;
+++ unset SEMS_MODULEFILES_ROOT
unset SEMS_NETCDF_INCLUDE_PATH;
+++ unset SEMS_NETCDF_INCLUDE_PATH
unset SEMS_NETCDF_LIBRARY_PATH;
+++ unset SEMS_NETCDF_LIBRARY_PATH
unset SEMS_NETCDF_ROOT;
+++ unset SEMS_NETCDF_ROOT
unset SEMS_PLATFORM;
+++ unset SEMS_PLATFORM
unset _LMFILES_;
+++ unset _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
+++ _ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
+++ _ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable_Sz_=3;
+++ _ModuleTable_Sz_=3
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
unset _ModuleTable005_;
+++ unset _ModuleTable005_
unset _ModuleTable006_;
+++ unset _ModuleTable006_
unset _ModuleTable007_;
+++ unset _ModuleTable007_
unset _ModuleTable008_;
+++ unset _ModuleTable008_
unset _ModuleTable009_;
+++ unset _ModuleTable009_
unset _ModuleTable010_;
+++ unset _ModuleTable010_
unset _ModuleTable011_;
+++ unset _ModuleTable011_
module use /projects/sems/acme-boca-modulefiles/env-module
++ module use /projects/sems/acme-boca-modulefiles/env-module
+++ /usr/share/lmod/lmod/libexec/lmod sh use /projects/sems/acme-boca-modulefiles/env-module
++ eval '__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:3\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
export _ModuleTable001_;
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
export _ModuleTable002_;
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
export _ModuleTable003_;
_ModuleTable_Sz_=3;
export _ModuleTable_Sz_;'
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:3\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/env-module:3;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0ge30sCm1wYXRoQSA9IHsKIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9lbnYtbW9kdWxlIiwgIi9ldGMvc2NsL21vZHVsZWZpbGVzIgosICIvcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzIiwgIi9ldGMvbW9kdWxlZmlsZXMiCiwgIi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMiLCAiL3Vzci9zaGFyZS9Nb2R1bGVzL21vZHVsZWZpbGVzIgosICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHMiLCAiL2FwcHMvbW9kdWxlcy9tb2R1
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k;
+++ _ModuleTable002_=bGVmaWxlcyIsICIvb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlcyIsCn0sCnN5c3RlbUJhc2VNUEFUSCA9ICIvZXRjL3NjbC9tb2R1bGVmaWxlczovcHJvamVjdHMvc2llcnJhL21vZHVsZXMvZ2VuZXJhdGVkL21vZHVsZWZpbGVzOi9ldGMvc2NsL21vZHVsZWZpbGVzOi9ldGMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlczovdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlcy1hcHBzOi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXM6L29wdC90b3NzL21vZHVsZXMvbW9kdWxlZmlsZXM6L3Vzci9zaGFyZS9tb2R1bGVmaWxlcy9MaW51eDovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0NvcmU6L3Vzci9zaGFyZS9sbW9k
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K;
+++ _ModuleTable003_=L2xtb2QvbW9kdWxlZmlsZXMvQ29yZSIsCn0K
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable_Sz_=3;
+++ _ModuleTable_Sz_=3
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
++ module load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
+++ /usr/share/lmod/lmod/libexec/lmod sh load acme-boca-env aue/python/3.11.6 sems-archive-git sems-archive-cmake/3.19.1 gnu/10.3.1 sems-archive-intel/21.3.0 sems-archive-netcdf/4.4.1/exo
++ eval 'BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
export BLASLIB;
CC=icc;
export CC;
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
export CMAKE_PREFIX_PATH;
CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export CPATH;
CXX=icpc;
export CXX;
F77=ifort;
export F77;
F90=ifort;
export F90;
F95=ifort;
export F95;
FC=ifort;
export FC;
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
export GNU_INCLUDES;
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
export GNU_LIBS;
unset INTELHOME;
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
export INTEL_LICENSE_FILE;
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
export LD_LIBRARY_PATH;
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
export __LMOD_REF_COUNT_LIBRARY_PATH;
LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
export LIBRARY_PATH;
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo;
export LOADEDMODULES;
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
export __LMOD_REF_COUNT_MANPATH;
MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
export MANPATH;
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLHOME;
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
export MKLROOT;
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDE;
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
export MKL_INCLUDES;
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIB;
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
export MKL_LIBS;
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:3\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
export __LMOD_REF_COUNT_MODULEPATH;
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
export MODULEPATH;
OMP_NUM_THREADS=1;
export OMP_NUM_THREADS;
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
export __LMOD_REF_COUNT_PATH;
PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
export PATH;
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
export PKG_CONFIG_PATH;
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_CMAKE_LOCAL_MPI_VERSION;
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
export SEMS_CMAKE_ROOT;
SEMS_CMAKE_VERSION=3.19.1;
export SEMS_CMAKE_VERSION;
SEMS_COMPILER_NAME=intel;
export SEMS_COMPILER_NAME;
SEMS_COMPILER_VERSION=21.3.0;
export SEMS_COMPILER_VERSION;
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_COMPILER_VERSION;
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_GIT_LOCAL_MPI_VERSION;
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
export SEMS_GIT_ROOT;
SEMS_GIT_VERSION=2.10.1;
export SEMS_GIT_VERSION;
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include;
export SEMS_HDF5_INCLUDE_PATH;
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib;
export SEMS_HDF5_LIBRARY_PATH;
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_HDF5_LOCAL_MPI_VERSION;
SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base;
export SEMS_HDF5_ROOT;
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5:1;
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5;
export SEMS_LIBRARY_DATA;
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
export SEMS_MODULEFILES_ROOT;
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include;
export SEMS_NETCDF_INCLUDE_PATH;
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib;
export SEMS_NETCDF_LIBRARY_PATH;
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
export SEMS_NETCDF_LOCAL_MPI_VERSION;
SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo;
export SEMS_NETCDF_ROOT;
SEMS_PLATFORM=boca;
export SEMS_PLATFORM;
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo;
export _LMFILES_;
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh;
export _ModuleTable001_;
_ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g;
export _ModuleTable002_;
_ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn;
export _ModuleTable003_;
_ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE;
export _ModuleTable004_;
_ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5;
export _ModuleTable005_;
_ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i;
export _ModuleTable006_;
_ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl;
export _ModuleTable007_;
_ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw;
export _ModuleTable008_;
_ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v;
export _ModuleTable009_;
_ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls;
export _ModuleTable010_;
_ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
export _ModuleTable011_;
_ModuleTable_Sz_=11;
export _ModuleTable_Sz_;'
BLASLIB=-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64\ -lmkl_intel_lp64\ -lmkl_intel_thread\ -lmkl_core\ -liomp5\ -lpthread\ -lm;
+++ BLASLIB='-Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -Wl,-rpath,/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -L/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm'
export BLASLIB;
+++ export BLASLIB
CC=icc;
+++ CC=icc
export CC;
+++ export CC
__LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1;
+++ __LMOD_REF_COUNT_CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva:1
export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH;
+++ export __LMOD_REF_COUNT_CMAKE_PREFIX_PATH
CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva;
+++ CMAKE_PREFIX_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva
export CMAKE_PREFIX_PATH;
+++ export CMAKE_PREFIX_PATH
CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ CPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export CPATH;
+++ export CPATH
CXX=icpc;
+++ CXX=icpc
export CXX;
+++ export CXX
F77=ifort;
+++ F77=ifort
export F77;
+++ export F77
F90=ifort;
+++ F90=ifort
export F90;
+++ export F90
F95=ifort;
+++ F95=ifort
export F95;
+++ export F95
FC=ifort;
+++ FC=ifort
export FC;
+++ export FC
GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include;
+++ GNU_INCLUDES=/opt/rh/gcc-toolset-10/root/usr/include/c++/10:/opt/rh/gcc-toolset-10/root/usr/include
export GNU_INCLUDES;
+++ export GNU_INCLUDES
GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10;
+++ GNU_LIBS=/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10
export GNU_LIBS;
+++ export GNU_LIBS
unset INTELHOME;
+++ unset INTELHOME
__LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1;
+++ __LMOD_REF_COUNT_INTEL_LICENSE_FILE=/projects/global/licenses/intel:1
export __LMOD_REF_COUNT_INTEL_LICENSE_FILE;
+++ export __LMOD_REF_COUNT_INTEL_LICENSE_FILE
INTEL_LICENSE_FILE=/projects/global/licenses/intel;
+++ INTEL_LICENSE_FILE=/projects/global/licenses/intel
export INTEL_LICENSE_FILE;
+++ export INTEL_LICENSE_FILE
__LMOD_REF_COUNT_LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1\;/opt/rh/gcc-toolset-10/root/usr/lib64:1\;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1\;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3;
+++ __LMOD_REF_COUNT_LD_LIBRARY_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:2;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:1;/opt/rh/gcc-toolset-10/root/usr/lib64:1;/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:1;/projects/sems/install/boca/sems/utility/git/2.10.1/lib:1;/ascldap/users/smturbe/.conda/envs/smt_nco/lib:3'
export __LMOD_REF_COUNT_LD_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LD_LIBRARY_PATH
LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib;
+++ LD_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib/x64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/rh/gcc-toolset-10/root/usr/lib64:/opt/rh/gcc-toolset-10/root/usr/lib/gcc/x86_64-redhat-linux/10:/projects/sems/install/boca/sems/utility/cmake/3.19.1/lib:/projects/sems/install/boca/sems/utility/git/2.10.1/lib:/ascldap/users/smturbe/.conda/envs/smt_nco/lib
export LD_LIBRARY_PATH;
+++ export LD_LIBRARY_PATH
__LMOD_REF_COUNT_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1;
+++ __LMOD_REF_COUNT_LIBRARY_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib:1'
export __LMOD_REF_COUNT_LIBRARY_PATH;
+++ export __LMOD_REF_COUNT_LIBRARY_PATH
LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib;
+++ LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib:/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/lib
export LIBRARY_PATH;
+++ export LIBRARY_PATH
LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo;
+++ LOADEDMODULES=acme-boca-env:aue/python/3.11.6:sems-archive-git/2.10.1:sems-archive-cmake/3.19.1:gnu/10.3.1:intel/21.3.0:mkl/21.3.0:sems-archive-intel/21.3.0:sems-archive-hdf5/1.8.12/base:sems-archive-netcdf/4.4.1/exo
export LOADEDMODULES;
+++ export LOADEDMODULES
__LMOD_REF_COUNT_MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1\;/opt/rh/gcc-toolset-10/root/usr/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1\;/usr/share/lmod/lmod/share/man:1\;:1;
+++ __LMOD_REF_COUNT_MANPATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:1;/opt/rh/gcc-toolset-10/root/usr/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:1;/projects/sems/install/boca/sems/utility/git/2.10.1/man:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:1;/usr/share/lmod/lmod/share/man:1;:1'
export __LMOD_REF_COUNT_MANPATH;
+++ export __LMOD_REF_COUNT_MANPATH
MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::;
+++ MANPATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/share/man:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/documentation/en/man/common:/opt/rh/gcc-toolset-10/root/usr/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/share/man:/projects/sems/install/boca/sems/utility/cmake/3.19.1/man:/projects/sems/install/boca/sems/utility/git/2.10.1/share/man:/projects/sems/install/boca/sems/utility/git/2.10.1/man:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/share/man:/usr/share/lmod/lmod/share/man::
export MANPATH;
+++ export MANPATH
MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLHOME=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLHOME;
+++ export MKLHOME
MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0;
+++ MKLROOT=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0
export MKLROOT;
+++ export MKLROOT
MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDE=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDE;
+++ export MKL_INCLUDE
MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include;
+++ MKL_INCLUDES=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/include
export MKL_INCLUDES;
+++ export MKL_INCLUDES
MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIB=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIB;
+++ export MKL_LIB
MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64;
+++ MKL_LIBS=/projects/global/toss4/compilers/intel/intel_2021/oneapi/mkl/2021.3.0/lib/intel64
export MKL_LIBS;
+++ export MKL_LIBS
__LMOD_REF_COUNT_MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1\;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1\;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1\;/projects/sems/acme-boca-modulefiles/env-module:3\;/etc/scl/modulefiles:3\;/projects/sierra/modules/generated/modulefiles:1\;/etc/modulefiles:1\;/usr/share/modulefiles:1\;/usr/share/Modules/modulefiles:1\;/apps/modules/modulefiles-apps:1\;/apps/modules/modulefiles:1\;/opt/toss/modules/modulefiles:1;
+++ __LMOD_REF_COUNT_MODULEPATH='/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:1;/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:1;/projects/sems/acme-boca-modulefiles/boca/acme/tpl:1;/projects/sems/acme-boca-modulefiles/env-module:3;/etc/scl/modulefiles:3;/projects/sierra/modules/generated/modulefiles:1;/etc/modulefiles:1;/usr/share/modulefiles:1;/usr/share/Modules/modulefiles:1;/apps/modules/modulefiles-apps:1;/apps/modules/modulefiles:1;/opt/toss/modules/modulefiles:1'
export __LMOD_REF_COUNT_MODULEPATH;
+++ export __LMOD_REF_COUNT_MODULEPATH
MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles;
+++ MODULEPATH=/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl:/projects/sems/acme-boca-modulefiles/boca/acme/tpl:/projects/sems/acme-boca-modulefiles/env-module:/etc/scl/modulefiles:/projects/sierra/modules/generated/modulefiles:/etc/modulefiles:/usr/share/modulefiles:/usr/share/Modules/modulefiles:/apps/modules/modulefiles-apps:/apps/modules/modulefiles:/opt/toss/modules/modulefiles
export MODULEPATH;
+++ export MODULEPATH
OMP_NUM_THREADS=1;
+++ OMP_NUM_THREADS=1
export OMP_NUM_THREADS;
+++ export OMP_NUM_THREADS
__LMOD_REF_COUNT_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1\;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1\;/opt/rh/gcc-toolset-10/root/usr/bin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1\;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1\;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1\;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1\;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1\;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1\;/projects/netpub/anaconda3/2022.05/condabin:1\;/usr/lpp/mmfs/bin:1\;/opt/ibm/MCStore/bin:1\;/opt/ibm/MCStore/scripts:1\;/usr/lib64/ccache:1\;/usr/local/bin:1\;/usr/bin:1\;/usr/local/sbin:1\;/usr/sbin:1;
+++ __LMOD_REF_COUNT_PATH='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:1;/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:1;/opt/rh/gcc-toolset-10/root/usr/bin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:1;/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:1;/projects/sems/install/boca/sems/utility/git/2.10.1/bin:1;/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:1;/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:1;/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:1;/projects/netpub/anaconda3/2022.05/condabin:1;/usr/lpp/mmfs/bin:1;/opt/ibm/MCStore/bin:1;/opt/ibm/MCStore/scripts:1;/usr/lib64/ccache:1;/usr/local/bin:1;/usr/bin:1;/usr/local/sbin:1;/usr/sbin:1'
export __LMOD_REF_COUNT_PATH;
+++ export __LMOD_REF_COUNT_PATH
PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin;
+++ PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/bin:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/bin:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin/intel64:/projects/global/toss4/compilers/intel/intel_2021/oneapi/compiler/2021.3.0/linux/bin:/opt/rh/gcc-toolset-10/root/usr/bin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/sbin:/projects/sems/install/boca/sems/utility/cmake/3.19.1/bin:/projects/sems/install/boca/sems/utility/git/2.10.1/sbin:/projects/sems/install/boca/sems/utility/git/2.10.1/bin:/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/bin:/home/smturbe/.vscode-server/cli/servers/Stable-994fd12f8d3a5aa16f17d42c041e5809167e845a/server/bin/remote-cli:/ascldap/users/smturbe/.conda/envs/e3sm-unified_1.11/bin:/projects/netpub/anaconda3/2022.05/condabin:/usr/lpp/mmfs/bin:/opt/ibm/MCStore/bin:/opt/ibm/MCStore/scripts:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
export PATH;
+++ export PATH
__LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1;
+++ __LMOD_REF_COUNT_PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig:1
export __LMOD_REF_COUNT_PKG_CONFIG_PATH;
+++ export __LMOD_REF_COUNT_PKG_CONFIG_PATH
PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig;
+++ PKG_CONFIG_PATH=/projects/aue/hpc/builds/x86_64/rhel8/f6a36cb8/tooling-sprint-24.02/install/linux-rhel8-x86_64/gcc-10.3.0/python-3.11.6-qvlrkva/lib/pkgconfig
export PKG_CONFIG_PATH;
+++ export PKG_CONFIG_PATH
SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_COMPILER_VERSION;
+++ export SEMS_CMAKE_LOCAL_COMPILER_VERSION
SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_CMAKE_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_CMAKE_LOCAL_MPI_VERSION;
+++ export SEMS_CMAKE_LOCAL_MPI_VERSION
SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1;
+++ SEMS_CMAKE_ROOT=/projects/sems/install/boca/sems/utility/cmake/3.19.1
export SEMS_CMAKE_ROOT;
+++ export SEMS_CMAKE_ROOT
SEMS_CMAKE_VERSION=3.19.1;
+++ SEMS_CMAKE_VERSION=3.19.1
export SEMS_CMAKE_VERSION;
+++ export SEMS_CMAKE_VERSION
SEMS_COMPILER_NAME=intel;
+++ SEMS_COMPILER_NAME=intel
export SEMS_COMPILER_NAME;
+++ export SEMS_COMPILER_NAME
SEMS_COMPILER_VERSION=21.3.0;
+++ SEMS_COMPILER_VERSION=21.3.0
export SEMS_COMPILER_VERSION;
+++ export SEMS_COMPILER_VERSION
SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_COMPILER_VERSION;
+++ export SEMS_GIT_LOCAL_COMPILER_VERSION
SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_GIT_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_GIT_LOCAL_MPI_VERSION;
+++ export SEMS_GIT_LOCAL_MPI_VERSION
SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1;
+++ SEMS_GIT_ROOT=/projects/sems/install/boca/sems/utility/git/2.10.1
export SEMS_GIT_ROOT;
+++ export SEMS_GIT_ROOT
SEMS_GIT_VERSION=2.10.1;
+++ SEMS_GIT_VERSION=2.10.1
export SEMS_GIT_VERSION;
+++ export SEMS_GIT_VERSION
SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include;
+++ SEMS_HDF5_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/include
export SEMS_HDF5_INCLUDE_PATH;
+++ export SEMS_HDF5_INCLUDE_PATH
SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib;
+++ SEMS_HDF5_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base/lib
export SEMS_HDF5_LIBRARY_PATH;
+++ export SEMS_HDF5_LIBRARY_PATH
SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_COMPILER_VERSION;
+++ export SEMS_HDF5_LOCAL_COMPILER_VERSION
SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_HDF5_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_HDF5_LOCAL_MPI_VERSION;
+++ export SEMS_HDF5_LOCAL_MPI_VERSION
SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base;
+++ SEMS_HDF5_ROOT=/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/intel/21.3.0/base
export SEMS_HDF5_ROOT;
+++ export SEMS_HDF5_ROOT
SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5;
+++ SEMS_INTEL_LOCAL_COMPILER_VERSION=4.8.5
export SEMS_INTEL_LOCAL_COMPILER_VERSION;
+++ export SEMS_INTEL_LOCAL_COMPILER_VERSION
SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_INTEL_LOCAL_PYTHON_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_INTEL_LOCAL_PYTHON_VERSION;
+++ export SEMS_INTEL_LOCAL_PYTHON_VERSION
__LMOD_REF_COUNT_SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:1\;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5:1;
+++ __LMOD_REF_COUNT_SEMS_LIBRARY_DATA='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/<COMPILER_NAME>/<COMPILER_VERSION>/exo,NETCDF:1;/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/<COMPILER_NAME>/<COMPILER_VERSION>/base,HDF5:1'
export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA;
+++ export __LMOD_REF_COUNT_SEMS_LIBRARY_DATA
SEMS_LIBRARY_DATA=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/\<COMPILER_NAME\>/\<COMPILER_VERSION\>/base,HDF5;
+++ SEMS_LIBRARY_DATA='/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/<COMPILER_NAME>/<COMPILER_VERSION>/exo,NETCDF:/projects/sems/install/boca/sems/tpl/hdf5/1.8.12/<COMPILER_NAME>/<COMPILER_VERSION>/base,HDF5'
export SEMS_LIBRARY_DATA;
+++ export SEMS_LIBRARY_DATA
SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles;
+++ SEMS_MODULEFILES_ROOT=/projects/sems/modulefiles
export SEMS_MODULEFILES_ROOT;
+++ export SEMS_MODULEFILES_ROOT
SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include;
+++ SEMS_NETCDF_INCLUDE_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
export SEMS_NETCDF_INCLUDE_PATH;
+++ export SEMS_NETCDF_INCLUDE_PATH
SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib;
+++ SEMS_NETCDF_LIBRARY_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
export SEMS_NETCDF_LIBRARY_PATH;
+++ export SEMS_NETCDF_LIBRARY_PATH
SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_COMPILER_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_COMPILER_VERSION;
+++ export SEMS_NETCDF_LOCAL_COMPILER_VERSION
SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE;
+++ SEMS_NETCDF_LOCAL_MPI_VERSION=LOCAL_VERSION_NOT_AVAILABLE
export SEMS_NETCDF_LOCAL_MPI_VERSION;
+++ export SEMS_NETCDF_LOCAL_MPI_VERSION
SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo;
+++ SEMS_NETCDF_ROOT=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export SEMS_NETCDF_ROOT;
+++ export SEMS_NETCDF_ROOT
SEMS_PLATFORM=boca;
+++ SEMS_PLATFORM=boca
export SEMS_PLATFORM;
+++ export SEMS_PLATFORM
_LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo;
+++ _LMFILES_=/projects/sems/acme-boca-modulefiles/env-module/acme-boca-env.lua:/apps/modules/modulefiles-apps/aue/python/3.11.6:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-git/2.10.1:/projects/sems/acme-boca-modulefiles/boca/sems-archive/utility/sems-archive-cmake/3.19.1:/opt/toss/modules/modulefiles/gnu/10.3.1:/apps/modules/modulefiles/intel/21.3.0:/apps/modules/modulefiles/mkl/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/compiler/sems-archive-intel/21.3.0:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-hdf5/1.8.12/base:/projects/sems/acme-boca-modulefiles/boca/sems-archive/tpl/sems-archive-netcdf/4.4.1/exo
export _LMFILES_;
+++ export _LMFILES_
_ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh;
+++ _ModuleTable001_=X01vZHVsZVRhYmxlXyA9IHsKTVR2ZXJzaW9uID0gMywKY19yZWJ1aWxkVGltZSA9IGZhbHNlLApjX3Nob3J0VGltZSA9IGZhbHNlLApkZXB0aFQgPSB7fSwKZmFtaWx5ID0ge30sCm1UID0gewpbImFjbWUtYm9jYS1lbnYiXSA9IHsKYWN0aW9uQSA9IHsKCiJwcmVwZW5kX3BhdGgoXCJNT0RVTEVQQVRIXCIsXCIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbFwiKSIKLCAicHJlcGVuZF9wYXRoKFwiTU9EVUxFUEFUSFwiLFwiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2Nh
export _ModuleTable001_;
+++ export _ModuleTable001_
_ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g;
+++ _ModuleTable002_=LW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyXCIpIiwgInByZXBlbmRfcGF0aChcIk1PRFVMRVBBVEhcIixcIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5XCIpIiwKfSwKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2Vudi1tb2R1bGUvYWNtZS1ib2NhLWVudi5sdWEiLApmdWxsTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKbG9hZE9yZGVyID0gMSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhY21lLWJvY2EtZW52IiwKd1YgPSAiTS4qemZpbmFsIiwKfSwKWyJhdWUvcHl0aG9uIl0gPSB7CmZuID0g
export _ModuleTable002_;
+++ export _ModuleTable002_
_ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn;
+++ _ModuleTable003_=Ii9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcy9hdWUvcHl0aG9uLzMuMTEuNiIsCmZ1bGxOYW1lID0gImF1ZS9weXRob24vMy4xMS42IiwKbG9hZE9yZGVyID0gMiwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJhdWUvcHl0aG9uLzMuMTEuNiIsCndWID0gIjAwMDAwMDAwMy4wMDAwMDAwMTEuMDAwMDAwMDA2Lip6ZmluYWwiLAp9LApnbnUgPSB7CmZuID0gIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzL2dudS8xMC4zLjEiLApmdWxsTmFtZSA9ICJnbnUvMTAuMy4xIiwKbG9hZE9yZGVyID0gNSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDAsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJn
export _ModuleTable003_;
+++ export _ModuleTable003_
_ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE;
+++ _ModuleTable004_=bnUvMTAuMy4xIiwKd1YgPSAiMDAwMDAwMDEwLjAwMDAwMDAwMy4wMDAwMDAwMDEuKnpmaW5hbCIsCn0sCmludGVsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL2ludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gImludGVsLzIxLjMuMCIsCmxvYWRPcmRlciA9IDYsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAxLApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAiaW50ZWwvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKbWtsID0gewpmbiA9ICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzL21rbC8yMS4zLjAiLApmdWxsTmFtZSA9ICJta2wvMjEuMy4wIiwKbG9hZE9yZGVyID0gNywKcHJvcFQgPSB7fSwKc3RhY2tE
export _ModuleTable004_;
+++ export _ModuleTable004_
_ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5;
+++ _ModuleTable005_=ZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJta2wvMjEuMy4wIiwKd1YgPSAiXjAwMDAwMDIxLjAwMDAwMDAwMy4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtY21ha2UiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3V0aWxpdHkvc2Vtcy1hcmNoaXZlLWNtYWtlLzMuMTkuMSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLApsb2FkT3JkZXIgPSA0LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1jbWFrZS8zLjE5LjEiLAp3ViA9ICIwMDAwMDAwMDMuMDAwMDAwMDE5
export _ModuleTable005_;
+++ export _ModuleTable005_
_ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i;
+++ _ModuleTable006_=LjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtZ2l0Il0gPSB7CmZuID0gIi9wcm9qZWN0cy9zZW1zL2FjbWUtYm9jYS1tb2R1bGVmaWxlcy9ib2NhL3NlbXMtYXJjaGl2ZS91dGlsaXR5L3NlbXMtYXJjaGl2ZS1naXQvMi4xMC4xIiwKZnVsbE5hbWUgPSAic2Vtcy1hcmNoaXZlLWdpdC8yLjEwLjEiLApsb2FkT3JkZXIgPSAzLApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1naXQiLAp3ViA9ICIwMDAwMDAwMDIuMDAwMDAwMDEwLjAwMDAwMDAwMS4qemZpbmFsIiwKfSwKWyJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1i
export _ModuleTable006_;
+++ export _ModuleTable006_
_ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl;
+++ _ModuleTable007_=b2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1oZGY1LzEuOC4xMi9iYXNlIiwKbG9hZE9yZGVyID0gOSwKcHJvcFQgPSB7fSwKc3RhY2tEZXB0aCA9IDEsCnN0YXR1cyA9ICJhY3RpdmUiLAp1c2VyTmFtZSA9ICJzZW1zLWFyY2hpdmUtaGRmNS8xLjguMTIvYmFzZSIsCndWID0gIipiYXNlLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1pbnRlbCJdID0gewpmbiA9ICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvY29tcGlsZXIvc2Vtcy1hcmNoaXZlLWludGVsLzIxLjMuMCIsCmZ1bGxOYW1lID0gInNl
export _ModuleTable007_;
+++ export _ModuleTable007_
_ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw;
+++ _ModuleTable008_=bXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLApsb2FkT3JkZXIgPSA4LApwcm9wVCA9IHt9LApzdGFja0RlcHRoID0gMCwKc3RhdHVzID0gImFjdGl2ZSIsCnVzZXJOYW1lID0gInNlbXMtYXJjaGl2ZS1pbnRlbC8yMS4zLjAiLAp3ViA9ICIwMDAwMDAwMjEuMDAwMDAwMDAzLip6ZmluYWwiLAp9LApbInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEiXSA9IHsKZm4gPSAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL3RwbC9zZW1zLWFyY2hpdmUtbmV0Y2RmLzQuNC4xL2V4byIsCmZ1bGxOYW1lID0gInNlbXMtYXJjaGl2ZS1uZXRjZGYvNC40LjEvZXhvIiwKbG9hZE9yZGVyID0gMTAsCnByb3BUID0ge30sCnN0YWNrRGVwdGggPSAw
export _ModuleTable008_;
+++ export _ModuleTable008_
_ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v;
+++ _ModuleTable009_=LApzdGF0dXMgPSAiYWN0aXZlIiwKdXNlck5hbWUgPSAic2Vtcy1hcmNoaXZlLW5ldGNkZi80LjQuMS9leG8iLAp3ViA9ICIqZXhvLip6ZmluYWwiLAp9LAp9LAptcGF0aEEgPSB7CiIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdXRpbGl0eSIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1vZHVsZWZpbGVzL2JvY2Evc2Vtcy1hcmNoaXZlL2NvbXBpbGVyIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9zZW1zLWFyY2hpdmUvdHBsIgosICIvcHJvamVjdHMvc2Vtcy9hY21lLWJvY2EtbW9kdWxlZmlsZXMvYm9jYS9hY21lL3RwbCIKLCAiL3Byb2plY3RzL3NlbXMvYWNtZS1ib2NhLW1v
export _ModuleTable009_;
+++ export _ModuleTable009_
_ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls;
+++ _ModuleTable010_=ZHVsZWZpbGVzL2Vudi1tb2R1bGUiLCAiL2V0Yy9zY2wvbW9kdWxlZmlsZXMiCiwgIi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXMiLCAiL2V0Yy9tb2R1bGVmaWxlcyIKLCAiL3Vzci9zaGFyZS9tb2R1bGVmaWxlcyIsICIvdXNyL3NoYXJlL01vZHVsZXMvbW9kdWxlZmlsZXMiCiwgIi9hcHBzL21vZHVsZXMvbW9kdWxlZmlsZXMtYXBwcyIsICIvYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwgIi9vcHQvdG9zcy9tb2R1bGVzL21vZHVsZWZpbGVzIiwKfSwKc3lzdGVtQmFzZU1QQVRIID0gIi9ldGMvc2NsL21vZHVsZWZpbGVzOi9wcm9qZWN0cy9zaWVycmEvbW9kdWxlcy9nZW5lcmF0ZWQvbW9kdWxlZmlsZXM6L2V0Yy9zY2wvbW9kdWxlZmls
export _ModuleTable010_;
+++ export _ModuleTable010_
_ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=;
+++ _ModuleTable011_=ZXM6L2V0Yy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzOi91c3Ivc2hhcmUvTW9kdWxlcy9tb2R1bGVmaWxlczovYXBwcy9tb2R1bGVzL21vZHVsZWZpbGVzLWFwcHM6L2FwcHMvbW9kdWxlcy9tb2R1bGVmaWxlczovb3B0L3Rvc3MvbW9kdWxlcy9tb2R1bGVmaWxlczovdXNyL3NoYXJlL21vZHVsZWZpbGVzL0xpbnV4Oi91c3Ivc2hhcmUvbW9kdWxlZmlsZXMvQ29yZTovdXNyL3NoYXJlL2xtb2QvbG1vZC9tb2R1bGVmaWxlcy9Db3JlIiwKfQo=
export _ModuleTable011_;
+++ export _ModuleTable011_
_ModuleTable_Sz_=11;
+++ _ModuleTable_Sz_=11
export _ModuleTable_Sz_;
+++ export _ModuleTable_Sz_
export NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ export NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ NETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ export PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
++ PNETCDF_PATH=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo
export NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
++ export NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
++ NETCDF_INCLUDES=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/include
export NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
++ export NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
++ NETCDF_LIBS=/projects/sems/install/boca/sems/tpl/netcdf/4.4.1/intel/21.3.0/exo/lib
export OMP_STACKSIZE=64M
++ export OMP_STACKSIZE=64M
++ OMP_STACKSIZE=64M
export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ export CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel
++ CLDERA_PATH=/projects/cldera/cldera-tools/install-master/intel

export COMPILER=intel
++ export COMPILER=intel
++ COMPILER=intel
export MPILIB=mpi-serial
++ export MPILIB=mpi-serial
++ MPILIB=mpi-serial
export DEBUG=FALSE
++ export DEBUG=FALSE
++ DEBUG=FALSE
export OS=LINUX
++ export OS=LINUX
++ OS=LINUX
+ gmake clean
+ OS=LINUX
+ gmake
ld: gen_domain.o: in function `fmain_IP_var_exists_':
gen_domain.F90:(.text+0x17d2): undefined reference to `nf_inq_varid_'
ld: gen_domain.o: in function `fmain_IP_check_ret_..1':
gen_domain.F90:(.text+0x18a8): undefined reference to `nf_strerror_'
ld: gen_domain.o: in function `fmain_IP_check_ret_..0':
gen_domain.F90:(.text+0x19a4): undefined reference to `nf_strerror_'
ld: gen_domain.o: in function `fmain_IP_write_file_':
gen_domain.F90:(.text+0x1b4e): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x1bc6): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x1c5a): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x1cd2): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x1d4a): undefined reference to `nf_put_att_text_'
ld: gen_domain.o:gen_domain.F90:(.text+0x1dd0): more undefined references to `nf_put_att_text_' follow
ld: gen_domain.o: in function `fmain_IP_write_file_':
gen_domain.F90:(.text+0x2486): undefined reference to `nf_def_dim_'
ld: gen_domain.F90:(.text+0x24b9): undefined reference to `nf_def_dim_'
ld: gen_domain.F90:(.text+0x24e9): undefined reference to `nf_def_dim_'
ld: gen_domain.F90:(.text+0x2519): undefined reference to `nf_def_dim_'
ld: gen_domain.F90:(.text+0x2544): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x256d): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2596): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x25d8): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2652): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x26cc): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2746): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x278c): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2806): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2880): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x28fa): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x29b0): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x29dd): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2a06): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2a2f): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2a71): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2aeb): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2b65): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2bab): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2c25): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2c9f): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2ccc): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2cf5): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x2d37): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2db1): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2e2b): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2ea5): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2f1f): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x2f62): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x2fd3): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x3044): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x30b5): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x30f8): undefined reference to `nf_def_var_'
ld: gen_domain.F90:(.text+0x3169): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x31da): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x324b): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x3313): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x3427): undefined reference to `nf_put_att_text_'
ld: gen_domain.F90:(.text+0x3442): undefined reference to `nf_enddef_'
ld: gen_domain.F90:(.text+0x4391): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x44d4): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x45f5): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x4626): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x4753): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x4868): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x4899): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x4b0f): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x4d3f): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x4d70): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x4ffc): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x521b): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x524c): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x536d): undefined reference to `nf_put_var_int_'
ld: gen_domain.F90:(.text+0x5471): undefined reference to `nf_put_var_int_'
ld: gen_domain.F90:(.text+0x54a2): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x55b4): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x56a5): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x56d6): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x57ef): undefined reference to `nf_put_var_double_'
ld: gen_domain.F90:(.text+0x58ea): undefined reference to `nf_put_var_double_'
ld: gen_domain.o: in function `fmain_IP_gen_domain_':
gen_domain.F90:(.text+0x631f): undefined reference to `nf_open_'
ld: gen_domain.F90:(.text+0x6457): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x6493): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x64cf): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x6501): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x676a): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x68ca): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x6a94): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6ac6): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6b64): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6b94): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6c32): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6c5a): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6d06): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6d2e): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6d76): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6da2): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6dd1): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6dfd): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6e2c): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6e58): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x6e87): undefined reference to `nf_inq_dimid_'
ld: gen_domain.F90:(.text+0x6eb3): undefined reference to `nf_inq_dimlen_'
ld: gen_domain.F90:(.text+0x7017): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x70ab): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x7115): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x71a9): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x721d): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x7711): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x7752): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x77e6): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x78bf): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x7900): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0x7994): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x7a6d): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x7c83): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x7ee2): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x80f8): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x8357): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x83f3): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x8a07): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x8a9b): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x8b05): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x8b99): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x8c03): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x8c97): undefined reference to `nf_get_var_double_'
ld: gen_domain.F90:(.text+0x8d1f): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0x8db3): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0x9aee): undefined reference to `nf_close_'
ld: gen_domain.F90:(.text+0x9e20): undefined reference to `nf_create_'
ld: gen_domain.F90:(.text+0xa004): undefined reference to `nf_close_'
ld: gen_domain.F90:(.text+0xa0f5): undefined reference to `nf_create_'
ld: gen_domain.F90:(.text+0xa2d8): undefined reference to `nf_close_'
ld: gen_domain.F90:(.text+0xa39d): undefined reference to `nf_create_'
ld: gen_domain.F90:(.text+0xa571): undefined reference to `nf_close_'
ld: gen_domain.F90:(.text+0xae7d): undefined reference to `nf_inq_varid_'
ld: gen_domain.F90:(.text+0xaf19): undefined reference to `nf_get_var_int_'
ld: gen_domain.F90:(.text+0xb220): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0xb390): undefined reference to `nf_get_att_text_'
ld: gen_domain.F90:(.text+0xb3be): undefined reference to `nf_get_att_text_'
gmake: *** [Makefile:143: ../gen_domain] Error 1
