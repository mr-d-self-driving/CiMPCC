; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude ReachSets.msg.html

(cl:defclass <ReachSets> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sets
    :reader sets
    :initarg :sets
    :type (cl:vector osuf1_common-msg:NPointSet)
   :initform (cl:make-array 0 :element-type 'osuf1_common-msg:NPointSet :initial-element (cl:make-instance 'osuf1_common-msg:NPointSet))))
)

(cl:defclass ReachSets (<ReachSets>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReachSets>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReachSets)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<ReachSets> is deprecated: use osuf1_common-msg:ReachSets instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReachSets>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:header-val is deprecated.  Use osuf1_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sets-val :lambda-list '(m))
(cl:defmethod sets-val ((m <ReachSets>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:sets-val is deprecated.  Use osuf1_common-msg:sets instead.")
  (sets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReachSets>) ostream)
  "Serializes a message object of type '<ReachSets>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReachSets>) istream)
  "Deserializes a message object of type '<ReachSets>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osuf1_common-msg:NPointSet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReachSets>)))
  "Returns string type for a message object of type '<ReachSets>"
  "osuf1_common/ReachSets")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachSets)))
  "Returns string type for a message object of type 'ReachSets"
  "osuf1_common/ReachSets")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReachSets>)))
  "Returns md5sum for a message object of type '<ReachSets>"
  "6aec3e3fcb8a9e4d22874c0bd0b7379f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReachSets)))
  "Returns md5sum for a message object of type 'ReachSets"
  "6aec3e3fcb8a9e4d22874c0bd0b7379f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReachSets>)))
  "Returns full string definition for message of type '<ReachSets>"
  (cl:format cl:nil "Header header~%NPointSet[] sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: osuf1_common/NPointSet~%NPoint[] set ~%================================================================================~%MSG: osuf1_common/NPoint~%float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReachSets)))
  "Returns full string definition for message of type 'ReachSets"
  (cl:format cl:nil "Header header~%NPointSet[] sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: osuf1_common/NPointSet~%NPoint[] set ~%================================================================================~%MSG: osuf1_common/NPoint~%float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReachSets>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReachSets>))
  "Converts a ROS message object to a list"
  (cl:list 'ReachSets
    (cl:cons ':header (header msg))
    (cl:cons ':sets (sets msg))
))
