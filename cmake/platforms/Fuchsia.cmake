# Toolchain config for Fuchsia.

SET(CMAKE_SYSTEM_NAME Fuchsia)

if(NOT CMAKE_C_COMPILER)
  SET(CMAKE_C_COMPILER clang)
endif()

if(NOT CMAKE_CXX_COMPILER)
  set(CMAKE_CXX_COMPILER clang++)
endif()

if(NOT CMAKE_AR)
  set(CMAKE_CXX_COMPILER llvm-ar)
endif()

if(NOT CMAKE_RANLIB)
  set(CMAKE_CXX_COMPILER llvm-ranlib)
endif()

set(FUCHSIA 1 CACHE STRING "" FORCE)

# let's pretend that Fuchsia is Unix for a while
set(UNIX 1 CACHE STRING "" FORCE)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
