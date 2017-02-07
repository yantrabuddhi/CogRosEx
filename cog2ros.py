#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from opencog.atomspace import TruthValue

rospy.init_node("cog2ros")
pub = rospy.Publisher('alert', String, queue_size=10)

def send_msg(valstr):
	s = valstr.name
	pub.publish(s)
	return TruthValue(1, 1)
