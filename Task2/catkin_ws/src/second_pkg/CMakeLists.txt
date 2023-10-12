cmake_minimum_required(VERSION 3.0.2)
project(second_pkg)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(publisher2_node src/publisher2.cpp)
target_link_libraries(publisher2_node ${catkin_LIBRARIES})

add_executable(subscriber2_node src/subscriber2.cpp)
target_link_libraries(subscriber2_node ${catkin_LIBRARIES})
