cmake_minimum_required(VERSION 3.0.2)
project(turtle_move_pkg)


find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  std_msgs
  turtlesim
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(circle_publisher src/CirclePublisher.cpp)
target_link_libraries(circle_publisher ${catkin_LIBRARIES})

add_executable(circle_subscriber src/CircleSubscriber.cpp)
target_link_libraries(circle_subscriber ${catkin_LIBRARIES})

add_executable(line_publisher src/LinePublisher.cpp)
target_link_libraries(line_publisher ${catkin_LIBRARIES})

add_executable(line_subscriber src/LineSubscriber.cpp)
target_link_libraries(line_subscriber ${catkin_LIBRARIES})
