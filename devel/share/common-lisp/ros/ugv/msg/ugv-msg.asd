
(cl:in-package :asdf)

(defsystem "ugv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UGV_message" :depends-on ("_package_UGV_message"))
    (:file "_package_UGV_message" :depends-on ("_package"))
  ))