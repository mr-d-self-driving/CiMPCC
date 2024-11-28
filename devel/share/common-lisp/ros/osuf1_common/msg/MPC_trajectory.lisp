; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude MPC_trajectory.msg.html

(cl:defclass <MPC_trajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector osuf1_common-msg:MPC_prediction)
   :initform (cl:make-array 0 :element-type 'osuf1_common-msg:MPC_prediction :initial-element (cl:make-instance 'osuf1_common-msg:MPC_prediction))))
)

(cl:defclass MPC_trajectory (<MPC_trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MPC_trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MPC_trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<MPC_trajectory> is deprecated: use osuf1_common-msg:MPC_trajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MPC_trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:header-val is deprecated.  Use osuf1_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <MPC_trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:trajectory-val is deprecated.  Use osuf1_common-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MPC_trajectory>) ostream)
  "Serializes a message object of type '<MPC_trajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MPC_trajectory>) istream)
  "Deserializes a message object of type '<MPC_trajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osuf1_common-msg:MPC_prediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MPC_trajectory>)))
  "Returns string type for a message object of type '<MPC_trajectory>"
  "osuf1_common/MPC_trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MPC_trajectory)))
  "Returns string type for a message object of type 'MPC_trajectory"
  "osuf1_common/MPC_trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MPC_trajectory>)))
  "Returns md5sum for a message object of type '<MPC_trajectory>"
  "8a90cfb2e0bdfbd585e0991609a108cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MPC_trajectory)))
  "Returns md5sum for a message object of type 'MPC_trajectory"
  "8a90cfb2e0bdfbd585e0991609a108cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MPC_trajectory>)))
  "Returns full string definition for message of type '<MPC_trajectory>"
  (cl:format cl:nil "Header header~%MPC_prediction[] trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: osuf1_common/MPC_prediction~%float32[] state~%float32[] inputs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MPC_trajectory)))
  "Returns full string definition for message of type 'MPC_trajectory"
  (cl:format cl:nil "Header header~%MPC_prediction[] trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: osuf1_common/MPC_prediction~%float32[] state~%float32[] inputs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MPC_trajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MPC_trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'MPC_trajectory
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory (trajectory msg))
))
