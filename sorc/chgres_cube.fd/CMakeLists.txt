# This is the CMake build file for the chgres_cube utility in the
# UFS_UTILS package.
#
# George Gayno, Mark Potts

set(fortran_src
    atmosphere.F90
    chgres.F90
    grib2_util.F90
    input_data.F90
    model_grid.F90
    program_setup.F90
    search_util.F90
    static_data.F90
    surface.F90
    thompson_mp_climo_data.F90
    utils.F90
    write_data.F90)

if(CMAKE_Fortran_COMPILER_ID MATCHES "^(Intel)$")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -r8 -convert big_endian -assume byterecl")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "^(GNU)$")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -ffree-line-length-0 -fdefault-real-8 -fconvert=big-endian")
endif()

set(exe_name chgres_cube)
add_executable(${exe_name} ${fortran_src})
target_link_libraries(
  ${exe_name}
  nemsio::nemsio
  sfcio::sfcio
  sigio::sigio
  bacio::bacio_4
  sp::sp_d
  w3nco::w3nco_d
  esmf
  wgrib2::wgrib2_lib
  wgrib2::wgrib2_api
  MPI::MPI_Fortran
  NetCDF::NetCDF_Fortran)
if(OpenMP_Fortran_FOUND)
  target_link_libraries(${exe_name} OpenMP::OpenMP_Fortran)
endif()

install(TARGETS ${exe_name} RUNTIME DESTINATION ${exec_dir})
