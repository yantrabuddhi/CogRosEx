#!/usr/bin/env python
import rospy
from netcat import netcat

rospy.init_node("ros2cog")
rate = rospy.Rate(1) # 1hz
i=0
while not rospy.is_shutdown():
	i=i+1
	if i>5:
		i=1
	#create atoms
	ato = '(StateLink (ConceptNode "ticker") (NumberNode '+str(i)+'))\n'
	netcat("localhost",17001,ato)
	rate.sleep()
