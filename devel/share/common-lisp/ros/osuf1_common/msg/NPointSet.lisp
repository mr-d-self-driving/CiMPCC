; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude NPointSet.msg.html

(cl:defclass <NPointSet> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type (cl:vector osuf1_common-msg:NPoint)
   :initform (cl:make-array 0 :element-type 'osuf1_common-msg:NPoint :initial-element (cl:make-instance 'osuf1_common-msg:NPoint))))
)

(cl:defclass NPointSet (<NPointSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NPointSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NPointSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<NPointSet> is deprecated: use osuf1_common-msg:NPointSet instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <NPointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:set-val is deprecated.  Use osuf1_common-msg:set instead.")
  (set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NPointSet>) ostream)
  "Serializes a message object of type '<NPointSet>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'set))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NPointSet>) istream)
  "Deserializes a message object of type '<NPointSet>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'set) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'set)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'osuf1_common-msg:NPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NPointSet>)))
  "Returns string type for a message object of type '<NPointSet>"
  "osuf1_common/NPointSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NPointSet)))
  "Returns string type for a message object of type 'NPointSet"
  "osuf1_common/NPointSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NPointSet>)))
  "Returns md5sum for a message object of type '<NPointSet>"
  "53f40bcd3e313df5264df51e6264f28c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NPointSet)))
  "Returns md5sum for a message object of type 'NPointSet"
  "53f40bcd3e313df5264df51e6264f28c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NPointSet>)))
  "Returns full string definition for message of type '<NPointSet>"
  (cl:format cl:nil "NPoint[] set ~%================================================================================~%MSG: osuf1_common/NPoint~%float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NPointSet)))
  "Returns full string definition for message of type 'NPointSet"
  (cl:format cl:nil "NPoint[] set ~%================================================================================~%MSG: osuf1_common/NPoint~%float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NPointSet>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'set) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NPointSet>))
  "Converts a ROS message object to a list"
  (cl:list 'NPointSet
    (cl:cons ':set (set msg))
))
