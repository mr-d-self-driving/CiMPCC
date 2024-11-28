;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::ReachSets)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'ReachSets (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::REACHSETS")
  (make-package "OSUF1_COMMON::REACHSETS"))

(in-package "ROS")
;;//! \htmlinclude ReachSets.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass osuf1_common::ReachSets
  :super ros::object
  :slots (_header _sets ))

(defmethod osuf1_common::ReachSets
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sets __sets) (let (r) (dotimes (i 0) (push (instance osuf1_common::NPointSet :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sets __sets)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sets
   (&rest __sets)
   (if (keywordp (car __sets))
       (send* _sets __sets)
     (progn
       (if __sets (setq _sets (car __sets)))
       _sets)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; osuf1_common/NPointSet[] _sets
    (apply #'+ (send-all _sets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; osuf1_common/NPointSet[] _sets
     (write-long (length _sets) s)
     (dolist (elem _sets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; osuf1_common/NPointSet[] _sets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sets (let (r) (dotimes (i n) (push (instance osuf1_common::NPointSet :init) r)) r))
     (dolist (elem- _sets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osuf1_common::ReachSets :md5sum-) "6aec3e3fcb8a9e4d22874c0bd0b7379f")
(setf (get osuf1_common::ReachSets :datatype-) "osuf1_common/ReachSets")
(setf (get osuf1_common::ReachSets :definition-)
      "Header header
NPointSet[] sets
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
MSG: osuf1_common/NPointSet
NPoint[] set 
================================================================================
MSG: osuf1_common/NPoint
float32[] p
")



(provide :osuf1_common/ReachSets "6aec3e3fcb8a9e4d22874c0bd0b7379f")


