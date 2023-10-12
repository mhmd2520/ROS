#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char** argv) {
    // Initialize the ROS node
    ros::init(argc, argv, "publisher_node");

    // Create a ROS NodeHandle
    ros::NodeHandle nh;

    // Create a publisher that sends std_msgs::String messages to the "my_topic" topic
    ros::Publisher publisher = nh.advertise<std_msgs::String>("my_topic", 10);

    // Set the loop rate (Hz)
    ros::Rate loop_rate(1);  // 1 Hz

    while (ros::ok()) {
        // Create a message
        std_msgs::String msg;
        std_msgs::String name;
        std::stringstream ss;

        name.data = "Mohamed Khaled";

        ss << "Hello my name is: " << name.data;

        msg.data = ss.str();


        // Publish the message
        publisher.publish(msg);

        // Log the message
        ROS_INFO("Published: %s", msg.data.c_str());

        // Spin once to process callbacks
        ros::spinOnce();

        // Sleep to maintain the loop rate
        loop_rate.sleep();
    }

    return 0;
}
