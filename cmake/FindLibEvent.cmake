find_path(LIBEVENT_INCLUDE_DIR NAMES event2/event.h)
find_library(LIBEVENT_CORE_LIBRARY NAMES event_core)
find_library(LIBEVENT_PTHREADS_LIBRARY NAMES event_pthreads)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LibEvent DEFAULT_MSG LIBEVENT_INCLUDE_DIR LIBEVENT_CORE_LIBRARY LIBEVENT_PTHREADS_LIBRARY)

list(APPEND LIBEVENT_LIBRARIES ${LIBEVENT_CORE_LIBRARY} ${LIBEVENT_PTHREADS_LIBRARY})
