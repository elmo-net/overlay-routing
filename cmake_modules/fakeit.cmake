project(fakeit CXX)
include(ExternalProject)
find_package(Git REQUIRED)

ExternalProject_Add(
    fakeit
    PREFIX ${CMAKE_BINARY_DIR}/fakeit
    GIT_REPOSITORY https://github.com/eranpeer/FakeIt.git
    GIT_TAG 2.0.1
    TIMEOUT 10
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    LOG_DOWNLOAD ON
   )

ExternalProject_Get_Property(fakeit source_dir)
set(FAKEIT_INCLUDE_DIR ${source_dir}/include ${source_dir}/config/standalone CACHE INTERNAL "Path to include folder for FakeIt")

