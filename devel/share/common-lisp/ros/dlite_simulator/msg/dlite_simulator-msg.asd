
(cl:in-package :asdf)

(defsystem "dlite_simulator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Cell" :depends-on ("_package_Cell"))
    (:file "_package_Cell" :depends-on ("_package"))
  ))