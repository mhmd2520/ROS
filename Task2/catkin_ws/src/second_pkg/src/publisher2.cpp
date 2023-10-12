#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char** argv) {
    // Initialize the ROS node
    ros::init(argc, argv, "publisher2_node");

    // Create a ROS NodeHandle
    ros::NodeHandle nh;

    // Create a publisher that sends std_msgs::String messages to the "my_topic" topic
    ros::Publisher publisher = nh.advertise<std_msgs::String>("my_topic2", 10);

    // Set the loop rate (Hz)
    ros::Rate loop_rate(1);  // 1 Hz
    int count=0;

    while (ros::ok()) {
        // Create a message
        std_msgs::String msg;
        std::stringstream ss;


        ss << "Number: " << count;

        msg.data = ss.str();


        // Publish the message
        publisher.publish(msg);

        // Log the message
        ROS_INFO("Published2: %s", msg.data.c_str());

        // Spin once to process callbacks
        ros::spinOnce();

        // Sleep to maintain the loop rate
        loop_rate.sleep();

        ++count;
    }

    return 0;
}
