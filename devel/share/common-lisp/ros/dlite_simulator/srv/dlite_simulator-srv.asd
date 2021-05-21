
(cl:in-package :asdf)

(defsystem "dlite_simulator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dlite_simulator-msg
)
  :components ((:file "_package")
    (:file "SensorData" :depends-on ("_package_SensorData"))
    (:file "_package_SensorData" :depends-on ("_package"))
  ))