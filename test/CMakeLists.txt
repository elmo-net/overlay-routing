enable_testing()

project(routing-unit-tests)

set(TEST_SPECS main_test.cpp
               ClusterSocket_test.cpp)

include(catch)
include(fakeit)
include_directories("${CATCH_INCLUDE_DIR}" "${FAKEIT_INCLUDE_DIR}" "${routing_SOURCE_DIR}")

add_executable(exec_tests ${TEST_SPECS})
add_dependencies(exec_tests fakeit catch)

add_test(NAME Socket COMMAND exec_tests "[Sockets]" -r junit -o ${CMAKE_BINARY_DIR}/unit-tests.xml)
