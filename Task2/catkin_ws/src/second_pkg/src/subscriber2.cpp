#include <ros/ros.h>
#include <std_msgs/String.h>

// Callback function to process incoming messages
void messageCallback2(const std_msgs::String::ConstPtr& msg) {
    ROS_INFO("Received2: %s", msg->data.c_str());
}

int main(int argc, char** argv) {
    // Initialize the ROS node
    ros::init(argc, argv, "subscriber_node2");

    // Create a ROS NodeHandle
    ros::NodeHandle nh;

    // Create a subscriber that listens to the "my_topic" topic and calls the messageCallback function
    ros::Subscriber subscriber = nh.subscribe("my_topic2", 10, messageCallback2);

    // Spin to process callbacks
    ros::spin();

    return 0;
}
