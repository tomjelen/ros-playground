
(cl:in-package :asdf)

(defsystem "servant-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WorkAction" :depends-on ("_package_WorkAction"))
    (:file "_package_WorkAction" :depends-on ("_package"))
    (:file "WorkActionFeedback" :depends-on ("_package_WorkActionFeedback"))
    (:file "_package_WorkActionFeedback" :depends-on ("_package"))
    (:file "WorkActionGoal" :depends-on ("_package_WorkActionGoal"))
    (:file "_package_WorkActionGoal" :depends-on ("_package"))
    (:file "WorkActionResult" :depends-on ("_package_WorkActionResult"))
    (:file "_package_WorkActionResult" :depends-on ("_package"))
    (:file "WorkFeedback" :depends-on ("_package_WorkFeedback"))
    (:file "_package_WorkFeedback" :depends-on ("_package"))
    (:file "WorkGoal" :depends-on ("_package_WorkGoal"))
    (:file "_package_WorkGoal" :depends-on ("_package"))
    (:file "WorkResult" :depends-on ("_package_WorkResult"))
    (:file "_package_WorkResult" :depends-on ("_package"))
  ))