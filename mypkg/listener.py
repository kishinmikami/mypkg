# SPDX-FileCopyrightText: 2023 Kishin Miakmi blackgodstone.k@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

import rclpy
import math
from rclpy.node import Node
from std_msgs.msg import Int16

def cb(msg):
    global node
    hour = math.floor(msg.data / 3600)
    minute = math.floor(( msg.data / 60 ) % 60)
    second = math.floor(msg.data % 60)
    node.get_logger().info("Listen: %d h %d m %d s" % (hour,minute,second))

rclpy.init()
node = Node("listener")
pub = node.create_subscription(Int16, "countup", cb,  10)
rclpy.spin(node)
