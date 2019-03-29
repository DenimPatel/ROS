# ROS
contains the ROS implementations

To run the code,
1. >> catkin_make in catkin_ws 
2. >> soure devel/setup.bash
3. launch Agent node
   >> roslaunch agent agent_node.launch serial_id:=agent_2 start_x:=5 start_y:=5 start_yaw:=0
4. launch 
  >> rosservice list /update_goal agent_2 10 8 0
![alt text](http://url/to/img.png)
