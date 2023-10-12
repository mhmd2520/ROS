//Publisher only
/*
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv) {
    ros::init(argc, argv, "husky_move_node");
    ros::NodeHandle nh;
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    geometry_msgs::Twist twist;
    twist.linear.x = 0.2;  // Linear velocity (m/s)
    twist.angular.z = 0.4; // Angular velocity (rad/s)

    ros::Rate loop_rate(10); // 10 Hz

    while (ros::ok()) {
        vel_pub.publish(twist);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
*/

// Service
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <husky_move_pkg/Trigger.h>
#include <string>

// Global variables to store angular velocity and NodeHandle
ros::NodeHandle* nh_ptr;
double angular_velocity = 1; // Initial angular velocity (rad/s)

// Callback for the 'set_angular_velocity' service
bool setAngularVelocity(husky_move_pkg::Trigger::Request& req, husky_move_pkg::Trigger::Response& res) {
    angular_velocity = req.data;
    res.success = true;
    res.message = "Angular Velocity Set";
    return true;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "husky_control_node");
    ros::NodeHandle nh;
    nh_ptr = &nh; // Store the NodeHandle pointer

    // Publish on the /cmd_vel topic to control the robot's movement
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    // Subscribe to the 'set_angular_velocity' service
    ros::ServiceServer angular_velocity_service = nh.advertiseService("set_angular_velocity", setAngularVelocity);

    geometry_msgs::Twist twist;
    twist.linear.x = 1; // Linear velocity (m/s)
    //twist.angular.z = 0.4; // Angular velocity (rad/s)

    ros::Rate loop_rate(10); // 10 Hz control loop

    while (ros::ok()) {
        // Set the angular velocity from the global variable
        twist.angular.z = angular_velocity;

        // Publish the twist message to control the robot
        vel_pub.publish(twist);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

