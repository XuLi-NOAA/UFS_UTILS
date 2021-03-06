
# UFS_UTILS

Utilities for the NCEP models. This is part of the
[NCEPLIBS](https://github.com/NOAA-EMC/NCEPLIBS) project.

Documentation for the chgres_cube utility can be found at
https://noaa-emcufs-utils.readthedocs.io/en/latest/.

Complete documentation can be found at
https://noaa-emc.github.io/UFS_UTILS/.

## Authors

NCEP/EMC developers.

Code manager: George Gayno

## Prerequisites

This package requires the following NCEPLIBS packages:
 - [NCEPLIBS-gfsio](https://github.com/NOAA-EMC/NCEPLIBS-gfsio)
 - [NCEPLIBS-sfcio](https://github.com/NOAA-EMC/NCEPLIBS-sfcio)
 - [NCEPLIBS-w3nco](https://github.com/NOAA-EMC/NCEPLIBS-w3nco)
 - [NCEPLIBS-landsfcutil](https://github.com/NOAA-EMC/NCEPLIBS-landsfcutil)
 - [NCEPLIBS-bacio](https://github.com/NOAA-EMC/NCEPLIBS-bacio)
 - [NCEPLIBS-nemsio](https://github.com/NOAA-EMC/NCEPLIBS-nemsio)
 - [NCEPLIBS-nemsiogfs](https://github.com/NOAA-EMC/NCEPLIBS-nemsiogfs)
 - [NCEPLIBS-sigio](https://github.com/NOAA-EMC/NCEPLIBS-sigio)
 - [NCEPLIBS-sp](https://github.com/NOAA-EMC/NCEPLIBS-sp)
 - [NCEPLIBS-ip](https://github.com/NOAA-EMC/NCEPLIBS-ip)
 - [NCEPLIBS-w3emc](https://github.com/NOAA-EMC/NCEPLIBS-w3emc)
 - [NCEPLIBS-g2](https://github.com/NOAA-EMC/NCEPLIBS-g2)
 - [NCEPLIBS-wgrib2](https://github.com/NOAA-EMC/NCEPLIBS-wgrib2)

This package also requires:

 - [netcdf-c Library](https://github.com/Unidata/netcdf-c)
 - [netcdf-fortran Library](https://github.com/Unidata/netcdf-fortran)
 - [ESMF](https://github.com/esmf-org/esmf)
 - [Jasper](https://github.com/jasper-software/jasper)
 

## Installing

```
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/path/to/install ..
make -j2
make install
```

## Contents

The UFS_UTILS package contains the following utilities (under the sorc
directory):
- chgres_cube
- emcsfc_ice_blend
- emcsfc_snow2mdl
- fre-nctools
- fvcom_tools
- global_chgres
- global_cycle
- grid_tools
- nst_tf_chg
- orog_mask_tools
- sfc_climo_gen
- vcoord_gen

The reg_tests directory contains the regression test code.

The fix directory is where we set links to directories containing
large, static data files used by UFS_UTILS programs.

The tests directory contains unit tests.

The ush directory contains scripts to run UFS_UTILS programs.  Most are called from
driver scripts.

The util directory contains utility scripts to create coldstart initial conditions
for GFS parallels, and to run the vertical coordinate generator.

The parm directory contains variable mapping parameter tables used by the chgres_cube program.

The driver_scripts directory contains high-level driver scripts to create a model
grid on officially supported HPC platforms.

The modulefiles directory contains modules loaded when building UFS_UTILS on supported
HPC platforms.  They are also loaded at runtime by utility and regression test scripts.

The docs directory contains the control file for the doxygen
documentation build, as well as some markdown files which are part of
the documentation. It also contains (in the source subdirectory) the
ReadTheDocs documentation files.

## Disclaimer

The United States Department of Commerce (DOC) GitHub project code is
provided on an "as is" basis and the user assumes responsibility for
its use. DOC has relinquished control of the information and no longer
has responsibility to protect the integrity, confidentiality, or
availability of the information. Any claims against the Department of
Commerce stemming from the use of its GitHub project will be governed
by all applicable Federal law. Any reference to specific commercial
products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their
endorsement, recommendation or favoring by the Department of
Commerce. The Department of Commerce seal and logo, or the seal and
logo of a DOC bureau, shall not be used in any manner to imply
endorsement of any commercial product or activity by DOC or the United
States Government.

