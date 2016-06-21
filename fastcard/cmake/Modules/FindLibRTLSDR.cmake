if(NOT LIBRTLSDR_FOUND)
  find_path(LIBRTLSDR_INCLUDE_DIRS NAMES rtl-sdr.h
    PATHS
    ${LIBRTLSDR_PKG_INCLUDE_DIRS}
    /usr/include
    /usr/local/include
  )

  find_library(LIBRTLSDR_LIBRARIES NAMES rtlsdr
    PATHS
    ${LIBRTLSDR_PKG_LIBRARY_DIRS}
    /usr/lib
    /usr/local/lib
  )

if(LIBRTLSDR_INCLUDE_DIRS AND LIBRTLSDR_LIBRARIES)
  set(LIBRTLSDR_FOUND TRUE CACHE INTERNAL "librtlsdr found")
  message(STATUS "Found librtlsdr: ${LIBRTLSDR_INCLUDE_DIRS}, ${LIBRTLSDR_LIBRARIES}")
else(LIBRTLSDR_INCLUDE_DIRS AND LIBRTLSDR_LIBRARIES)
  set(LIBRTLSDR_FOUND FALSE CACHE INTERNAL "librtlsdr found")
  message(STATUS "librtlsdr not found.")
endif(LIBRTLSDR_INCLUDE_DIRS AND LIBRTLSDR_LIBRARIES)

mark_as_advanced(LIBRTLSDR_LIBRARIES LIBRTLSDR_INCLUDE_DIRS)

endif(NOT LIBRTLSDR_FOUND)
