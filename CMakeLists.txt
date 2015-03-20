cmake_minimum_required (VERSION 2.8)

if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU")
    set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -std=c++0x)
elseif ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
    set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -std=c++11)
elseif (MSVC)
    if (!MSVC12)
        message(FATAL_ERROR "Your C++ compiler does not support C++11.")
    endif()
endif ()

find_package(Boost REQUIRED)

add_subdirectory(src)