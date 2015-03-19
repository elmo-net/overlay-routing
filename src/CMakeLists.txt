project(routing)

add_library(routing ClusterSocket.hpp
					ClusterSocket.cpp)
include_directories(${Boost_INCLUDE_DIRS})
target_link_libraries(routing ${Boost_LIBRARIES})