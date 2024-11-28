;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::MPC_metadata)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'MPC_metadata (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::MPC_METADATA")
  (make-package "OSUF1_COMMON::MPC_METADATA"))

(in-package "ROS")
;;//! \htmlinclude MPC_metadata.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass osuf1_common::MPC_metadata
  :super ros::object
  :slots (_header _dt _horizon ))

(defmethod osuf1_common::MPC_metadata
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dt __dt) 0.0)
    ((:horizon __horizon) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _dt (float __dt))
   (setq _horizon (float __horizon))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:horizon
   (&optional __horizon)
   (if __horizon (setq _horizon __horizon)) _horizon)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _dt
    4
    ;; float32 _horizon
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _horizon
       (sys::poke _horizon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _horizon
     (setq _horizon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get osuf1_common::MPC_metadata :md5sum-) "befeb0e614663929d01d1f82336001db")
(setf (get osuf1_common::MPC_metadata :datatype-) "osuf1_common/MPC_metadata")
(setf (get osuf1_common::MPC_metadata :definition-)
      "Header header
float32 dt
float32 horizon

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
string frame_id

")



(provide :osuf1_common/MPC_metadata "befeb0e614663929d01d1f82336001db")


