project(routing-unit-tests)

include(catch)
include(fakeit)

include_directories(${CATCH_INCLUDE_DIR} ${COMMON_INCLUDES})
include_directories(${FAKEIT_INCLUDE_DIR} ${COMMON_INCLUDES})

#enable_testing(true)
