; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude NPoint.msg.html

(cl:defclass <NPoint> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NPoint (<NPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<NPoint> is deprecated: use osuf1_common-msg:NPoint instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <NPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:p-val is deprecated.  Use osuf1_common-msg:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NPoint>) ostream)
  "Serializes a message object of type '<NPoint>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'p))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NPoint>) istream)
  "Deserializes a message object of type '<NPoint>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'p) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'p)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NPoint>)))
  "Returns string type for a message object of type '<NPoint>"
  "osuf1_common/NPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NPoint)))
  "Returns string type for a message object of type 'NPoint"
  "osuf1_common/NPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NPoint>)))
  "Returns md5sum for a message object of type '<NPoint>"
  "a8139a50192c7dc7d77222a146aae12e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NPoint)))
  "Returns md5sum for a message object of type 'NPoint"
  "a8139a50192c7dc7d77222a146aae12e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NPoint>)))
  "Returns full string definition for message of type '<NPoint>"
  (cl:format cl:nil "float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NPoint)))
  "Returns full string definition for message of type 'NPoint"
  (cl:format cl:nil "float32[] p~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NPoint>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'p) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'NPoint
    (cl:cons ':p (p msg))
))
