;; Auto-generated. Do not edit!


(when (boundp 'planner::get_plan)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'get_plan (find-package "PLANNER")))
(unless (find-package "PLANNER::GET_PLAN")
  (make-package "PLANNER::GET_PLAN"))
(unless (find-package "PLANNER::GET_PLANREQUEST")
  (make-package "PLANNER::GET_PLANREQUEST"))
(unless (find-package "PLANNER::GET_PLANRESPONSE")
  (make-package "PLANNER::GET_PLANRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass planner::get_planRequest
  :super ros::object
  :slots (_serial_id _goal_x _goal_y _goal_yaw ))

(defmethod planner::get_planRequest
  (:init
   (&key
    ((:serial_id __serial_id) "")
    ((:goal_x __goal_x) 0)
    ((:goal_y __goal_y) 0)
    ((:goal_yaw __goal_yaw) 0)
    )
   (send-super :init)
   (setq _serial_id (string __serial_id))
   (setq _goal_x (round __goal_x))
   (setq _goal_y (round __goal_y))
   (setq _goal_yaw (round __goal_yaw))
   self)
  (:serial_id
   (&optional __serial_id)
   (if __serial_id (setq _serial_id __serial_id)) _serial_id)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:goal_yaw
   (&optional __goal_yaw)
   (if __goal_yaw (setq _goal_yaw __goal_yaw)) _goal_yaw)
  (:serialization-length
   ()
   (+
    ;; string _serial_id
    4 (length _serial_id)
    ;; int64 _goal_x
    8
    ;; int64 _goal_y
    8
    ;; int64 _goal_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _serial_id
       (write-long (length _serial_id) s) (princ _serial_id s)
     ;; int64 _goal_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_x) (= (length (_goal_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_x . bv) 0) 0) s)
              (write-long (ash (elt (_goal_x . bv) 1) -1) s))
             ((and (class _goal_x) (= (length (_goal_x . bv)) 1)) ;; big1
              (write-long (elt (_goal_x . bv) 0) s)
              (write-long (if (>= _goal_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_x s)(write-long (if (>= _goal_x 0) 0 #xffffffff) s)))
     ;; int64 _goal_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_y) (= (length (_goal_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_y . bv) 0) 0) s)
              (write-long (ash (elt (_goal_y . bv) 1) -1) s))
             ((and (class _goal_y) (= (length (_goal_y . bv)) 1)) ;; big1
              (write-long (elt (_goal_y . bv) 0) s)
              (write-long (if (>= _goal_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_y s)(write-long (if (>= _goal_y 0) 0 #xffffffff) s)))
     ;; int64 _goal_yaw
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_yaw (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_yaw) (= (length (_goal_yaw . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_yaw . bv) 0) 0) s)
              (write-long (ash (elt (_goal_yaw . bv) 1) -1) s))
             ((and (class _goal_yaw) (= (length (_goal_yaw . bv)) 1)) ;; big1
              (write-long (elt (_goal_yaw . bv) 0) s)
              (write-long (if (>= _goal_yaw 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_yaw s)(write-long (if (>= _goal_yaw 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _serial_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _goal_x
#+(or :alpha :irix6 :x86_64)
      (setf _goal_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _goal_y
#+(or :alpha :irix6 :x86_64)
      (setf _goal_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _goal_yaw
#+(or :alpha :irix6 :x86_64)
      (setf _goal_yaw (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_yaw (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass planner::get_planResponse
  :super ros::object
  :slots (_path ))

(defmethod planner::get_planResponse
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass planner::get_plan
  :super ros::object
  :slots ())

(setf (get planner::get_plan :md5sum-) "8e144f8dc287d43924a78579fd276bf9")
(setf (get planner::get_plan :datatype-) "planner/get_plan")
(setf (get planner::get_plan :request) planner::get_planRequest)
(setf (get planner::get_plan :response) planner::get_planResponse)

(defmethod planner::get_planRequest
  (:response () (instance planner::get_planResponse :init)))

(setf (get planner::get_planRequest :md5sum-) "8e144f8dc287d43924a78579fd276bf9")
(setf (get planner::get_planRequest :datatype-) "planner/get_planRequest")
(setf (get planner::get_planRequest :definition-)
      "string serial_id
int64 goal_x
int64 goal_y
int64 goal_yaw
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get planner::get_planResponse :md5sum-) "8e144f8dc287d43924a78579fd276bf9")
(setf (get planner::get_planResponse :datatype-) "planner/get_planResponse")
(setf (get planner::get_planResponse :definition-)
      "string serial_id
int64 goal_x
int64 goal_y
int64 goal_yaw
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :planner/get_plan "8e144f8dc287d43924a78579fd276bf9")


