; Auto-generated. Do not edit!


(cl:in-package osuf1_common-msg)


;//! \htmlinclude MPC_prediction.msg.html

(cl:defclass <MPC_prediction> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (inputs
    :reader inputs
    :initarg :inputs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MPC_prediction (<MPC_prediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MPC_prediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MPC_prediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name osuf1_common-msg:<MPC_prediction> is deprecated: use osuf1_common-msg:MPC_prediction instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MPC_prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:state-val is deprecated.  Use osuf1_common-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'inputs-val :lambda-list '(m))
(cl:defmethod inputs-val ((m <MPC_prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader osuf1_common-msg:inputs-val is deprecated.  Use osuf1_common-msg:inputs instead.")
  (inputs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MPC_prediction>) ostream)
  "Serializes a message object of type '<MPC_prediction>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'inputs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MPC_prediction>) istream)
  "Deserializes a message object of type '<MPC_prediction>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MPC_prediction>)))
  "Returns string type for a message object of type '<MPC_prediction>"
  "osuf1_common/MPC_prediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MPC_prediction)))
  "Returns string type for a message object of type 'MPC_prediction"
  "osuf1_common/MPC_prediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MPC_prediction>)))
  "Returns md5sum for a message object of type '<MPC_prediction>"
  "18f71d97ec5d2c12b5676c1814e14a05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MPC_prediction)))
  "Returns md5sum for a message object of type 'MPC_prediction"
  "18f71d97ec5d2c12b5676c1814e14a05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MPC_prediction>)))
  "Returns full string definition for message of type '<MPC_prediction>"
  (cl:format cl:nil "float32[] state~%float32[] inputs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MPC_prediction)))
  "Returns full string definition for message of type 'MPC_prediction"
  (cl:format cl:nil "float32[] state~%float32[] inputs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MPC_prediction>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MPC_prediction>))
  "Converts a ROS message object to a list"
  (cl:list 'MPC_prediction
    (cl:cons ':state (state msg))
    (cl:cons ':inputs (inputs msg))
))
