
(cl:in-package :asdf)

(defsystem "osuf1_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MPC_metadata" :depends-on ("_package_MPC_metadata"))
    (:file "_package_MPC_metadata" :depends-on ("_package"))
    (:file "MPC_prediction" :depends-on ("_package_MPC_prediction"))
    (:file "_package_MPC_prediction" :depends-on ("_package"))
    (:file "MPC_trajectory" :depends-on ("_package_MPC_trajectory"))
    (:file "_package_MPC_trajectory" :depends-on ("_package"))
    (:file "NPoint" :depends-on ("_package_NPoint"))
    (:file "_package_NPoint" :depends-on ("_package"))
    (:file "NPointSet" :depends-on ("_package_NPointSet"))
    (:file "_package_NPointSet" :depends-on ("_package"))
    (:file "ReachSets" :depends-on ("_package_ReachSets"))
    (:file "_package_ReachSets" :depends-on ("_package"))
  ))