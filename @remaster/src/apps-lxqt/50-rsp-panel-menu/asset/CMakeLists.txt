cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
# CMP0000: Call the cmake_minimum_required() command at the beginning of the top-level
# CMakeLists.txt file even before calling the project() command.
# The cmake_minimum_required(VERSION) command implicitly invokes the cmake_policy(VERSION)
# command to specify that the current project code is written for the given range of CMake
# versions.

# Set CMAKE_INSTALL_PREFIX to /usr by default
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX /usr CACHE PATH "PREFIX=/usr" FORCE)
endif()

project(rsp-panel)

set(PLUGIN "menu")

option(UPDATE_TRANSLATIONS "Update source translation translations/*.ts files" ON)
#option(WITH_SCREENSAVER_FALLBACK "Include support for converting the deprecated 'screensaver' plugin to 'quicklaunch'. This requires the rsp-leave (rsp-session) to be installed in runtime." ON)

# additional cmake files
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)


include(GNUInstallDirs)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(REQUIRED_QT_VERSION "5.15.3")
set(KF5_MINIMUM_VERSION "5.92.0")
set(RSP_GLOBALKEYS_MINIMUM_VERSION "0.17.0")
set(RSP_MINIMUM_VERSION "0.17.0")

set(QT_NO_CREATE_VERSIONLESS_TARGETS TRUE)

#find_package(Qt5Widgets ${REQUIRED_QT_VERSION} REQUIRED)
find_package(Qt5Xml ${REQUIRED_QT_VERSION} REQUIRED)
find_package(rsp ${RSP_MINIMUM_VERSION} REQUIRED)
find_package(rsp-globalkeys-ui ${RSP_GLOBALKEYS_MINIMUM_VERSION} REQUIRED)
find_package(Qt5Xdg REQUIRED)
# find_package(rsp-panel ${RSP_MINIMUM_VERSION} REQUIRED)
# find_package(PkgConfig REQUIRED)

# Patch Version
# set(RSP_PANEL_PATCH_VERSION 0)
# set(RSP_PANEL_VERSION ${RSP_MAJOR_VERSION}.${RSP_MINOR_VERSION}.${RSP_PANEL_PATCH_VERSION})
# add_definitions("-DRSP_PANEL_VERSION=\"${RSP_PANEL_VERSION}\"")

include(RSpPreventInSourceBuilds)
include(RSpTranslate)

# All RSpCompilerSettings except CMAKE_MODULE_LINKER_FLAGS work just fine
# So we reset only these Flags after loading RSpCompilerSettings
# rsp-build-tools:
#  set(CMAKE_MODULE_LINKER_FLAGS "-Wl,--no-undefined ${SYMBOLIC_FLAGS} ${CMAKE_MODULE_LINKER_FLAGS}")
message(STATUS "==OLD== CMAKE_MODULE_LINKER_FLAGS: ${CMAKE_MODULE_LINKER_FLAGS}")
set( OLD_CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS}")
include(RSpCompilerSettings NO_POLICY_SCOPE)
set(CMAKE_MODULE_LINKER_FLAGS "${OLD_CMAKE_MODULE_LINKER_FLAGS} ${SYMBOLIC_FLAGS}")

# Warning: This must be before add_subdirectory(panel). Move with caution.
set(PLUGIN_DIR "${CMAKE_INSTALL_FULL_LIBDIR}/rsp-panel")
add_definitions(
    -DPLUGIN_DIR=\"${PLUGIN_DIR}\"
)

message(STATUS "CMAKE Module linker flags: ${CMAKE_MODULE_LINKER_FLAGS}")
message(STATUS "Panel plugins location: ${PLUGIN_DIR}")

#########################################################################

#include_directories("/usr/include/rsp/")
set(HEADERS
  "${PLUGIN}plugin.h"
  "${PLUGIN}configuration.h"
  "${PLUGIN}widget.h"
  itemdescriptiondelegate.h
  applicationsview.h
  common.h
)

set(SOURCES
  "${PLUGIN}plugin.cpp"
  "${PLUGIN}configuration.cpp"
  "${PLUGIN}widget.cpp"
  itemdescriptiondelegate.cpp
  applicationsview.cpp
)

set(UIS
  "${PLUGIN}configuration.ui"
)

set(LIBRARIES
    ${LIBRARIES}
    rsp-globalkeys-ui
    Qt5Xdg
    Qt5Xml
)
set(ICON_SHARE_DIR ${CMAKE_INSTALL_FULL_DATAROOTDIR}/icons/hicolor/scalable/apps)
set(ICON_FILE "resources/wing-rsp.svg")
install(FILES "${ICON_FILE}" DESTINATION "${ICON_SHARE_DIR}")
include ("cmake/BuildPlugin.cmake")
#BUILD_RSP_PLUGIN(${PLUGIN})
