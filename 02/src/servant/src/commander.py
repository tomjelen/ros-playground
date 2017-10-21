#!/usr/bin/python
import time

import actionlib
import rospy

from servant.msg import WorkAction, WorkGoal, WorkResult

rospy.init_node('commander')
client = actionlib.SimpleActionClient('worker', WorkAction)
client.wait_for_server()

goal = WorkGoal()
goal.task_name = 'Super hard task'
goal.difficulty = 10

client.send_goal_and_wait(goal)
print 'Work completed. It took: ' + str(client.get_result().time_elapsed) + ' seconds'
