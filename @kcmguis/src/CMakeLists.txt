cmake_minimum_required(VERSION 3.5.0 FATAL_ERROR)
project(rsp-kwin-session)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(GNUInstallDirs)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Minimum Versions
set(RSP_MINIMUM_VERSION "2.0.0")

find_package(rsp ${RSP_MINIMUM_VERSION} REQUIRED)
#find_package(kwin REQUIRED)

find_package(PkgConfig REQUIRED)

# Please don't move, must be after rsp
#find_package(XdgUserDirs REQUIRED)

# Patch Version
set(RSP_KWIN_SESSION_PATCH_VERSION 0)

set(RSP_KWIN_SESSION_VERSION 0.1)
add_definitions(
    "-DRSP_kwin_SESSION_VERSION=\"${RSP_kwin_SESSION_VERSION}\""
)

include(RSpPreventInSourceBuilds)
include(RSpCompilerSettings NO_POLICY_SCOPE)
include(GNUInstallDirs)
include(RSpConfigVars)
file(GLOB DESKTOP_FILES_IN *.desktop.in)

find_program(KWIN_EXECUTABLE kwin_wayland)

if(KWIN_EXECUTABLE)
    execute_process(
        COMMAND ${KWIN_EXECUTABLE} --version
        OUTPUT_VARIABLE KWIN_VERSION
        OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    message("Found kwin version: ${KWIN_VERSION}")
endif()


# startrsp<compositor> script
set(PREDEF_XDG_DATA_DIRS "$XDG_DATA_HOME")
if(NOT("${RSP_DATA_DIR}" MATCHES "^/usr(/local)?/share$"))
    set(PREDEF_XDG_DATA_DIRS "${PREDEF_XDG_DATA_DIRS}:${RSP_DATA_DIR}")
endif()
set(PREDEF_XDG_DATA_DIRS "${PREDEF_XDG_DATA_DIRS}:/usr/local/share:/usr/share")
set(PREDEF_XDG_CONFIG_DIRS "/etc:${RSP_ETC_XDG_DIR}:/usr/share")

configure_file(startrspkwin.in startrspkwin @ONLY)
configure_file(toggledropdown.in toggledropdown @ONLY)
configure_file(rsp2kwinexporter.in rsp2kwinexporter @ONLY)

install(PROGRAMS
    "${CMAKE_CURRENT_BINARY_DIR}/startrspkwin"
    "${CMAKE_CURRENT_BINARY_DIR}/toggledropdown"
    "${CMAKE_CURRENT_BINARY_DIR}/rsp2kwinexporter"
    DESTINATION "${CMAKE_INSTALL_BINDIR}"
    COMPONENT Runtime
)

install(FILES
    startrspkwin.1
    DESTINATION "${CMAKE_INSTALL_MANDIR}/man1"
    COMPONENT Runtime
)


install(FILES
    rsp-kwin.desktop
    DESTINATION "${CMAKE_INSTALL_DATADIR}/wayland-sessions"
    COMPONENT Runtime
)
