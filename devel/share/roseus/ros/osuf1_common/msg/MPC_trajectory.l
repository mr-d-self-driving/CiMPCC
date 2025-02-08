;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::MPC_trajectory)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'MPC_trajectory (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::MPC_TRAJECTORY")
  (make-package "OSUF1_COMMON::MPC_TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude MPC_trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass osuf1_common::MPC_trajectory
  :super ros::object
  :slots (_header _trajectory ))

(defmethod osuf1_common::MPC_trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory __trajectory) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; osuf1_common/MPC_prediction[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; osuf1_common/MPC_prediction[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; osuf1_common/MPC_prediction[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance osuf1_common::MPC_prediction :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osuf1_common::MPC_trajectory :md5sum-) "8a90cfb2e0bdfbd585e0991609a108cb")
(setf (get osuf1_common::MPC_trajectory :datatype-) "osuf1_common/MPC_trajectory")
(setf (get osuf1_common::MPC_trajectory :definition-)
      "Header header
MPC_prediction[] trajectory

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

================================================================================
MSG: osuf1_common/MPC_prediction
float32[] state
float32[] inputs
")



(provide :osuf1_common/MPC_trajectory "8a90cfb2e0bdfbd585e0991609a108cb")


