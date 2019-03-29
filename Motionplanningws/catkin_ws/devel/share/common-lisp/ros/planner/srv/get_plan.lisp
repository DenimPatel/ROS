; Auto-generated. Do not edit!


(cl:in-package planner-srv)


;//! \htmlinclude get_plan-request.msg.html

(cl:defclass <get_plan-request> (roslisp-msg-protocol:ros-message)
  ((serial_id
    :reader serial_id
    :initarg :serial_id
    :type cl:string
    :initform "")
   (goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:integer
    :initform 0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:integer
    :initform 0)
   (goal_yaw
    :reader goal_yaw
    :initarg :goal_yaw
    :type cl:integer
    :initform 0))
)

(cl:defclass get_plan-request (<get_plan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_plan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_plan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-srv:<get_plan-request> is deprecated: use planner-srv:get_plan-request instead.")))

(cl:ensure-generic-function 'serial_id-val :lambda-list '(m))
(cl:defmethod serial_id-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:serial_id-val is deprecated.  Use planner-srv:serial_id instead.")
  (serial_id m))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:goal_x-val is deprecated.  Use planner-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:goal_y-val is deprecated.  Use planner-srv:goal_y instead.")
  (goal_y m))

(cl:ensure-generic-function 'goal_yaw-val :lambda-list '(m))
(cl:defmethod goal_yaw-val ((m <get_plan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:goal_yaw-val is deprecated.  Use planner-srv:goal_yaw instead.")
  (goal_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_plan-request>) ostream)
  "Serializes a message object of type '<get_plan-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_id))
  (cl:let* ((signed (cl:slot-value msg 'goal_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_plan-request>) istream)
  "Deserializes a message object of type '<get_plan-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_yaw) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_plan-request>)))
  "Returns string type for a service object of type '<get_plan-request>"
  "planner/get_planRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan-request)))
  "Returns string type for a service object of type 'get_plan-request"
  "planner/get_planRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_plan-request>)))
  "Returns md5sum for a message object of type '<get_plan-request>"
  "8e144f8dc287d43924a78579fd276bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_plan-request)))
  "Returns md5sum for a message object of type 'get_plan-request"
  "8e144f8dc287d43924a78579fd276bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_plan-request>)))
  "Returns full string definition for message of type '<get_plan-request>"
  (cl:format cl:nil "string serial_id~%int64 goal_x~%int64 goal_y~%int64 goal_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_plan-request)))
  "Returns full string definition for message of type 'get_plan-request"
  (cl:format cl:nil "string serial_id~%int64 goal_x~%int64 goal_y~%int64 goal_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_plan-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serial_id))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_plan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_plan-request
    (cl:cons ':serial_id (serial_id msg))
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
    (cl:cons ':goal_yaw (goal_yaw msg))
))
;//! \htmlinclude get_plan-response.msg.html

(cl:defclass <get_plan-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass get_plan-response (<get_plan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_plan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_plan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-srv:<get_plan-response> is deprecated: use planner-srv:get_plan-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <get_plan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-srv:path-val is deprecated.  Use planner-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_plan-response>) ostream)
  "Serializes a message object of type '<get_plan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_plan-response>) istream)
  "Deserializes a message object of type '<get_plan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_plan-response>)))
  "Returns string type for a service object of type '<get_plan-response>"
  "planner/get_planResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan-response)))
  "Returns string type for a service object of type 'get_plan-response"
  "planner/get_planResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_plan-response>)))
  "Returns md5sum for a message object of type '<get_plan-response>"
  "8e144f8dc287d43924a78579fd276bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_plan-response)))
  "Returns md5sum for a message object of type 'get_plan-response"
  "8e144f8dc287d43924a78579fd276bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_plan-response>)))
  "Returns full string definition for message of type '<get_plan-response>"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_plan-response)))
  "Returns full string definition for message of type 'get_plan-response"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_plan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_plan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_plan-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_plan)))
  'get_plan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_plan)))
  'get_plan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_plan)))
  "Returns string type for a service object of type '<get_plan>"
  "planner/get_plan")