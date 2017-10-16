#!/usr/bin/python
import datetime
import rospy

rospy.init_node('my_publisher')
rate = rospy.Rate(10)

while not rospy.is_shutdown():
    print str(datetime.datetime.now()) + ' -> hola!'
    rate.sleep()
