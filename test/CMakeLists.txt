project(router.tests)

# Setup Catch for testing
include(catch)
include_directories("${CATCH_INCLUDE_DIR}" "${routing_SOURCE_DIR}")

# Include headers only relevant for tests from test/include
include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

#add_test(NAME Socket COMMAND exec_tests "[Sockets]" -r junit -o ${CMAKE_BINARY_DIR}/unit-tests.xml)
