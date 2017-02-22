# Install script for directory: /home/black/torch/torch-rnn/torch-hdf5/luasrc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/black/torch/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/luarocks/rocks/hdf5/0-0/lua/hdf5" TYPE FILE FILES
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/testUtils.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/dataset.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/group.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/init.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/ffi.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/datasetOptions.lua"
    "/home/black/torch/torch-rnn/torch-hdf5/luasrc/file.lua"
    )
endif()

