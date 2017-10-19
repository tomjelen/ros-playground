#!/usr/bin/python
"""Suscribes to hola messages, and prints them"""
import rospy
import std_msgs

rospy.init_node('my_subscriber')

def callback(msg):
    print msg

rospy.Subscriber('jelen/holas', std_msgs.msg.String, callback)

rospy.spin()
