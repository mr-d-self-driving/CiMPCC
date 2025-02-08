;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::NPoint)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'NPoint (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::NPOINT")
  (make-package "OSUF1_COMMON::NPOINT"))

(in-package "ROS")
;;//! \htmlinclude NPoint.msg.html


(defclass osuf1_common::NPoint
  :super ros::object
  :slots (_p ))

(defmethod osuf1_common::NPoint
  (:init
   (&key
    ((:p __p) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _p __p)
   self)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:serialization-length
   ()
   (+
    ;; float32[] _p
    (* 4    (length _p)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _p
     (write-long (length _p) s)
     (dotimes (i (length _p))
       (sys::poke (elt _p i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _p
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _p i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get osuf1_common::NPoint :md5sum-) "a8139a50192c7dc7d77222a146aae12e")
(setf (get osuf1_common::NPoint :datatype-) "osuf1_common/NPoint")
(setf (get osuf1_common::NPoint :definition-)
      "float32[] p
")



(provide :osuf1_common/NPoint "a8139a50192c7dc7d77222a146aae12e")


