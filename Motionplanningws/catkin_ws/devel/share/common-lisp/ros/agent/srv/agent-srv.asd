
(cl:in-package :asdf)

(defsystem "agent-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "update_goal" :depends-on ("_package_update_goal"))
    (:file "_package_update_goal" :depends-on ("_package"))
  ))