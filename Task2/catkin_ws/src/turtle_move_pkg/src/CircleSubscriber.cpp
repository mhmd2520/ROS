#include <ros/ros.h>
#include <turtlesim/Pose.h>

void poseCallback(const turtlesim::Pose::ConstPtr& msg) {
    ROS_INFO("Turtle's Pose - x: %.2f, y: %.2f", msg->x, msg->y);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "circle_subscriber");
    ros::NodeHandle nh;
    ros::Subscriber pose_sub = nh.subscribe("/turtle1/pose", 10, poseCallback);

    ros::spin();

    return 0;
}
