; Auto-generated. Do not edit!


(cl:in-package agent-srv)


;//! \htmlinclude update_goal-request.msg.html

(cl:defclass <update_goal-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass update_goal-request (<update_goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update_goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update_goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent-srv:<update_goal-request> is deprecated: use agent-srv:update_goal-request instead.")))

(cl:ensure-generic-function 'serial_id-val :lambda-list '(m))
(cl:defmethod serial_id-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent-srv:serial_id-val is deprecated.  Use agent-srv:serial_id instead.")
  (serial_id m))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent-srv:goal_x-val is deprecated.  Use agent-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent-srv:goal_y-val is deprecated.  Use agent-srv:goal_y instead.")
  (goal_y m))

(cl:ensure-generic-function 'goal_yaw-val :lambda-list '(m))
(cl:defmethod goal_yaw-val ((m <update_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agent-srv:goal_yaw-val is deprecated.  Use agent-srv:goal_yaw instead.")
  (goal_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update_goal-request>) ostream)
  "Serializes a message object of type '<update_goal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update_goal-request>) istream)
  "Deserializes a message object of type '<update_goal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update_goal-request>)))
  "Returns string type for a service object of type '<update_goal-request>"
  "agent/update_goalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal-request)))
  "Returns string type for a service object of type 'update_goal-request"
  "agent/update_goalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update_goal-request>)))
  "Returns md5sum for a message object of type '<update_goal-request>"
  "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update_goal-request)))
  "Returns md5sum for a message object of type 'update_goal-request"
  "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update_goal-request>)))
  "Returns full string definition for message of type '<update_goal-request>"
  (cl:format cl:nil "string serial_id~%int64 goal_x~%int64 goal_y~%int64 goal_yaw~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update_goal-request)))
  "Returns full string definition for message of type 'update_goal-request"
  (cl:format cl:nil "string serial_id~%int64 goal_x~%int64 goal_y~%int64 goal_yaw~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update_goal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serial_id))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update_goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'update_goal-request
    (cl:cons ':serial_id (serial_id msg))
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
    (cl:cons ':goal_yaw (goal_yaw msg))
))
;//! \htmlinclude update_goal-response.msg.html

(cl:defclass <update_goal-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass update_goal-response (<update_goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update_goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update_goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agent-srv:<update_goal-response> is deprecated: use agent-srv:update_goal-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update_goal-response>) ostream)
  "Serializes a message object of type '<update_goal-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update_goal-response>) istream)
  "Deserializes a message object of type '<update_goal-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update_goal-response>)))
  "Returns string type for a service object of type '<update_goal-response>"
  "agent/update_goalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal-response)))
  "Returns string type for a service object of type 'update_goal-response"
  "agent/update_goalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update_goal-response>)))
  "Returns md5sum for a message object of type '<update_goal-response>"
  "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update_goal-response)))
  "Returns md5sum for a message object of type 'update_goal-response"
  "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update_goal-response>)))
  "Returns full string definition for message of type '<update_goal-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update_goal-response)))
  "Returns full string definition for message of type 'update_goal-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update_goal-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update_goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'update_goal-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'update_goal)))
  'update_goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'update_goal)))
  'update_goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update_goal)))
  "Returns string type for a service object of type '<update_goal>"
  "agent/update_goal")