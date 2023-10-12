#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv) {
    ros::init(argc, argv, "line_publisher");
    ros::NodeHandle nh;
    ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    ros::Rate loop_rate(1);  // 1 Hz

    while (ros::ok()) {
        geometry_msgs::Twist msg;
        //msg.linear.x = 1.0;  // Move forward at 1 m/s
        msg.linear.x = 2.0;  // Increase linear velocity to 2 m/s for faster motion
        cmd_vel_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
