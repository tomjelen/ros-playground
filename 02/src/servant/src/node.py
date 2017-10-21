#!/usr/bin/python
import time

import actionlib
import rospy

from servant.msg import WorkAction, WorkGoal, WorkResult

def do_work(work):
    print 'Working on: ' + work.task_name
    result = WorkResult()
    result.time_elapsed = rospy.Duration.from_sec(1000)

    server.set_succeeded(result)

rospy.init_node('servant')
server = actionlib.SimpleActionServer('worker', WorkAction, do_work, False)
server.start()
rospy.spin()
