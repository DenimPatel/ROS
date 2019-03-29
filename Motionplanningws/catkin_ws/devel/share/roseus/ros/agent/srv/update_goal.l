;; Auto-generated. Do not edit!


(when (boundp 'agent::update_goal)
  (if (not (find-package "AGENT"))
    (make-package "AGENT"))
  (shadow 'update_goal (find-package "AGENT")))
(unless (find-package "AGENT::UPDATE_GOAL")
  (make-package "AGENT::UPDATE_GOAL"))
(unless (find-package "AGENT::UPDATE_GOALREQUEST")
  (make-package "AGENT::UPDATE_GOALREQUEST"))
(unless (find-package "AGENT::UPDATE_GOALRESPONSE")
  (make-package "AGENT::UPDATE_GOALRESPONSE"))

(in-package "ROS")





(defclass agent::update_goalRequest
  :super ros::object
  :slots (_serial_id _goal_x _goal_y _goal_yaw ))

(defmethod agent::update_goalRequest
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

(defclass agent::update_goalResponse
  :super ros::object
  :slots ())

(defmethod agent::update_goalResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass agent::update_goal
  :super ros::object
  :slots ())

(setf (get agent::update_goal :md5sum-) "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(setf (get agent::update_goal :datatype-) "agent/update_goal")
(setf (get agent::update_goal :request) agent::update_goalRequest)
(setf (get agent::update_goal :response) agent::update_goalResponse)

(defmethod agent::update_goalRequest
  (:response () (instance agent::update_goalResponse :init)))

(setf (get agent::update_goalRequest :md5sum-) "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(setf (get agent::update_goalRequest :datatype-) "agent/update_goalRequest")
(setf (get agent::update_goalRequest :definition-)
      "string serial_id
int64 goal_x
int64 goal_y
int64 goal_yaw



---
")

(setf (get agent::update_goalResponse :md5sum-) "bbbe7a32ed0951b9a5042e2c7ab47bdc")
(setf (get agent::update_goalResponse :datatype-) "agent/update_goalResponse")
(setf (get agent::update_goalResponse :definition-)
      "string serial_id
int64 goal_x
int64 goal_y
int64 goal_yaw



---
")



(provide :agent/update_goal "bbbe7a32ed0951b9a5042e2c7ab47bdc")


