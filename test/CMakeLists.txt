project(router.tests)

# Setup Catch for testing
include(catch)
include_directories("${CATCH_INCLUDE_DIR}" )

find_package(Boost 1.57 COMPONENTS system REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

# Include headers only relevant for tests from test/include
include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

file(GLOB_RECURSE ELMO_ROUTER_TESTS "*.cpp")

add_executable(tests ${ELMO_ROUTER_TESTS} test_base.cpp)
target_link_libraries(tests ${Boots_LIBRARY_DIRS})

add_test(NAME Socket COMMAND tests "[Sockets]" -r junit -o ${CMAKE_BINARY_DIR}/unit-tests.xml)
