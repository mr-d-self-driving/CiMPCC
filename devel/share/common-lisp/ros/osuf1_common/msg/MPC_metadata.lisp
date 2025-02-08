; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude MPC_metadata.msg.html

(cl:defclass <MPC_metadata> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (horizon
    :reader horizon
    :initarg :horizon
    :type cl:float
    :initform 0.0))
)

(cl:defclass MPC_metadata (<MPC_metadata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MPC_metadata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MPC_metadata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<MPC_metadata> is deprecated: use osuf1_common-msg:MPC_metadata instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MPC_metadata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:header-val is deprecated.  Use osuf1_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <MPC_metadata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:dt-val is deprecated.  Use osuf1_common-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'horizon-val :lambda-list '(m))
(cl:defmethod horizon-val ((m <MPC_metadata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:horizon-val is deprecated.  Use osuf1_common-msg:horizon instead.")
  (horizon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MPC_metadata>) ostream)
  "Serializes a message object of type '<MPC_metadata>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'horizon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MPC_metadata>) istream)
  "Deserializes a message object of type '<MPC_metadata>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizon) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MPC_metadata>)))
  "Returns string type for a message object of type '<MPC_metadata>"
  "osuf1_common/MPC_metadata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MPC_metadata)))
  "Returns string type for a message object of type 'MPC_metadata"
  "osuf1_common/MPC_metadata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MPC_metadata>)))
  "Returns md5sum for a message object of type '<MPC_metadata>"
  "befeb0e614663929d01d1f82336001db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MPC_metadata)))
  "Returns md5sum for a message object of type 'MPC_metadata"
  "befeb0e614663929d01d1f82336001db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MPC_metadata>)))
  "Returns full string definition for message of type '<MPC_metadata>"
  (cl:format cl:nil "Header header~%float32 dt~%float32 horizon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MPC_metadata)))
  "Returns full string definition for message of type 'MPC_metadata"
  (cl:format cl:nil "Header header~%float32 dt~%float32 horizon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MPC_metadata>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MPC_metadata>))
  "Converts a ROS message object to a list"
  (cl:list 'MPC_metadata
    (cl:cons ':header (header msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':horizon (horizon msg))
))
