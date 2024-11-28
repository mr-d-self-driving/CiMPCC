;; Auto-generated. Do not edit!


(when (boundp 'osuf1_common::NPointSet)
  (if (not (find-package "OSUF1_COMMON"))
    (make-package "OSUF1_COMMON"))
  (shadow 'NPointSet (find-package "OSUF1_COMMON")))
(unless (find-package "OSUF1_COMMON::NPOINTSET")
  (make-package "OSUF1_COMMON::NPOINTSET"))

(in-package "ROS")
;;//! \htmlinclude NPointSet.msg.html


(defclass osuf1_common::NPointSet
  :super ros::object
  :slots (_set ))

(defmethod osuf1_common::NPointSet
  (:init
   (&key
    ((:set __set) (let (r) (dotimes (i 0) (push (instance osuf1_common::NPoint :init) r)) r))
    )
   (send-super :init)
   (setq _set __set)
   self)
  (:set
   (&rest __set)
   (if (keywordp (car __set))
       (send* _set __set)
     (progn
       (if __set (setq _set (car __set)))
       _set)))
  (:serialization-length
   ()
   (+
    ;; osuf1_common/NPoint[] _set
    (apply #'+ (send-all _set :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; osuf1_common/NPoint[] _set
     (write-long (length _set) s)
     (dolist (elem _set)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; osuf1_common/NPoint[] _set
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set (let (r) (dotimes (i n) (push (instance osuf1_common::NPoint :init) r)) r))
     (dolist (elem- _set)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get osuf1_common::NPointSet :md5sum-) "53f40bcd3e313df5264df51e6264f28c")
(setf (get osuf1_common::NPointSet :datatype-) "osuf1_common/NPointSet")
(setf (get osuf1_common::NPointSet :definition-)
      "NPoint[] set 
================================================================================
MSG: osuf1_common/NPoint
float32[] p
")



(provide :osuf1_common/NPointSet "53f40bcd3e313df5264df51e6264f28c")


