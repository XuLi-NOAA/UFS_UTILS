#! /usr/bin/env bash
set -eux

target=${target:-"NULL"}
compiler=${compiler:-"intel"}

export MOD_PATH

if [[ "$target" == "linux.*" || "$target" == "macosx.*" ]]; then
 unset -f module
 set +x
 source ./modulefiles/build.$target > /dev/null 2>&1 
 set -x
else
 set +x
 source ./machine-setup.sh
 module use ../modulefiles
 module load build.$target.$compiler > /dev/null 2>&1
 module list
 set -x
fi

# --- Build all programs.
#

rm -fr ../build
mkdir ../build
cd ../build

CMAKE_FLAGS="-DCMAKE_INSTALL_PREFIX=../ -DEMC_EXEC_DIR=ON"

cmake .. ${CMAKE_FLAGS}

make -j 8 VERBOSE=1
make install

exit
