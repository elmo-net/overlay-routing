project(routing-unit-tests)

include(catch)
include(fakeit)

include_directories(${CATCH_INCLUDE_DIR} ${COMMON_INCLUDES})
include_directories(${FAKEIT_INCLUDE_DIR} ${COMMON_INCLUDES})
include_directories(${routing_SOURCE_DIR})

set(TEST_SPECS main_test.cpp
               ClusterSocket_test.cpp)

enable_testing(true)

add_executable(exec_tests ${TEST_SPECS})

add_test(NAME Socket COMMAND exec_tests "[Sockets]" -r junit -o ${CMAKE_BINARY_DIR}/unit-tests.xml)
