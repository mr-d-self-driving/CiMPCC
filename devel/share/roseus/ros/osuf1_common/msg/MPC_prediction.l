;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::MPC_prediction)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'MPC_prediction (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::MPC_PREDICTION")
  (make-package "OSUF1_COMMON::MPC_PREDICTION"))

(in-package "ROS")
;;//! \htmlinclude MPC_prediction.msg.html


(defclass osuf1_common::MPC_prediction
  :super ros::object
  :slots (_state _inputs ))

(defmethod osuf1_common::MPC_prediction
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:inputs __inputs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _state __state)
   (setq _inputs __inputs)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:inputs
   (&optional __inputs)
   (if __inputs (setq _inputs __inputs)) _inputs)
  (:serialization-length
   ()
   (+
    ;; float32[] _state
    (* 4    (length _state)) 4
    ;; float32[] _inputs
    (* 4    (length _inputs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _inputs
     (write-long (length _inputs) s)
     (dotimes (i (length _inputs))
       (sys::poke (elt _inputs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _inputs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get osuf1_common::MPC_prediction :md5sum-) "18f71d97ec5d2c12b5676c1814e14a05")
(setf (get osuf1_common::MPC_prediction :datatype-) "osuf1_common/MPC_prediction")
(setf (get osuf1_common::MPC_prediction :definition-)
      "float32[] state
float32[] inputs
")



(provide :osuf1_common/MPC_prediction "18f71d97ec5d2c12b5676c1814e14a05")


