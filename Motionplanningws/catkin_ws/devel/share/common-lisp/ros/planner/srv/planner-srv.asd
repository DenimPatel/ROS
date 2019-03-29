
(cl:in-package :asdf)

(defsystem "planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "get_plan" :depends-on ("_package_get_plan"))
    (:file "_package_get_plan" :depends-on ("_package"))
  ))