# - Find INOTIFYTOOLS
# This module finds an installed INOTIFYTOOLS package.
#
# It sets the following variables:
#  INOTIFYTOOLS_FOUND       - Set to false, or undefined, if INOTIFYTOOLS isn't found.
#  INOTIFYTOOLS_INCLUDE_DIR - The INOTIFYTOOLS include directory.
#  INOTIFYTOOLS_LIBRARY     - The INOTIFYTOOLS library to link against.

FIND_PATH(INOTIFYTOOLS_INCLUDE_DIR inotifytools/inotifytools.h)
FIND_LIBRARY(INOTIFYTOOLS_LIBRARY NAMES inotifytools)

IF (INOTIFYTOOLS_INCLUDE_DIR AND INOTIFYTOOLS_LIBRARY)
   SET(INOTIFYTOOLS_FOUND TRUE)
ENDIF (INOTIFYTOOLS_INCLUDE_DIR AND INOTIFYTOOLS_LIBRARY)

IF (INOTIFYTOOLS_FOUND)

   # show which INOTIFYTOOLS was found only if not quiet
   IF (NOT INOTIFYTOOLS_FIND_QUIETLY)
      MESSAGE(STATUS "Found INOTIFYTOOLS: ${INOTIFYTOOLS_LIBRARY}")
   ENDIF (NOT INOTIFYTOOLS_FIND_QUIETLY)

ELSE (INOTIFYTOOLS_FOUND)

   # fatal error if INOTIFYTOOLS is required but not found
   IF (INOTIFYTOOLS_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find INOTIFYTOOLS")
   ENDIF (INOTIFYTOOLS_FIND_REQUIRED)

ENDIF (INOTIFYTOOLS_FOUND)