#!/usr/bin/python
"""Publishes a message periodically"""

import datetime

import rospy
import std_msgs

rospy.init_node('my_publisher')
rate = rospy.Rate(10)
world = rospy.Publisher('jelen/holas', std_msgs.msg.String, queue_size=10)

while not rospy.is_shutdown():
    message = 'hola @ ' + str(datetime.datetime.now())
    print 'publishing -> ' + message
    world.publish(message)
    rate.sleep()
