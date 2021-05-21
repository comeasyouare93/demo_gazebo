;; Auto-generated. Do not edit!


(when (boundp 'dlite_simulator::SensorData)
  (if (not (find-package "DLITE_SIMULATOR"))
    (make-package "DLITE_SIMULATOR"))
  (shadow 'SensorData (find-package "DLITE_SIMULATOR")))
(unless (find-package "DLITE_SIMULATOR::SENSORDATA")
  (make-package "DLITE_SIMULATOR::SENSORDATA"))
(unless (find-package "DLITE_SIMULATOR::SENSORDATAREQUEST")
  (make-package "DLITE_SIMULATOR::SENSORDATAREQUEST"))
(unless (find-package "DLITE_SIMULATOR::SENSORDATARESPONSE")
  (make-package "DLITE_SIMULATOR::SENSORDATARESPONSE"))

(in-package "ROS")





(defclass dlite_simulator::SensorDataRequest
  :super ros::object
  :slots (_p ))

(defmethod dlite_simulator::SensorDataRequest
  (:init
   (&key
    ((:p __p) (instance dlite_simulator::Cell :init))
    )
   (send-super :init)
   (setq _p __p)
   self)
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:serialization-length
   ()
   (+
    ;; dlite_simulator/Cell _p
    (send _p :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dlite_simulator/Cell _p
       (send _p :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dlite_simulator/Cell _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;;
   self)
  )

(defclass dlite_simulator::SensorDataResponse
  :super ros::object
  :slots (_black _white ))

(defmethod dlite_simulator::SensorDataResponse
  (:init
   (&key
    ((:black __black) ())
    ((:white __white) ())
    )
   (send-super :init)
   (setq _black __black)
   (setq _white __white)
   self)
  (:black
   (&rest __black)
   (if (keywordp (car __black))
       (send* _black __black)
     (progn
       (if __black (setq _black (car __black)))
       _black)))
  (:white
   (&rest __white)
   (if (keywordp (car __white))
       (send* _white __white)
     (progn
       (if __white (setq _white (car __white)))
       _white)))
  (:serialization-length
   ()
   (+
    ;; dlite_simulator/Cell[] _black
    (apply #'+ (send-all _black :serialization-length)) 4
    ;; dlite_simulator/Cell[] _white
    (apply #'+ (send-all _white :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dlite_simulator/Cell[] _black
     (write-long (length _black) s)
     (dolist (elem _black)
       (send elem :serialize s)
       )
     ;; dlite_simulator/Cell[] _white
     (write-long (length _white) s)
     (dolist (elem _white)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dlite_simulator/Cell[] _black
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _black (let (r) (dotimes (i n) (push (instance dlite_simulator::Cell :init) r)) r))
     (dolist (elem- _black)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dlite_simulator/Cell[] _white
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _white (let (r) (dotimes (i n) (push (instance dlite_simulator::Cell :init) r)) r))
     (dolist (elem- _white)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dlite_simulator::SensorData
  :super ros::object
  :slots ())

(setf (get dlite_simulator::SensorData :md5sum-) "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(setf (get dlite_simulator::SensorData :datatype-) "dlite_simulator/SensorData")
(setf (get dlite_simulator::SensorData :request) dlite_simulator::SensorDataRequest)
(setf (get dlite_simulator::SensorData :response) dlite_simulator::SensorDataResponse)

(defmethod dlite_simulator::SensorDataRequest
  (:response () (instance dlite_simulator::SensorDataResponse :init)))

(setf (get dlite_simulator::SensorDataRequest :md5sum-) "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(setf (get dlite_simulator::SensorDataRequest :datatype-) "dlite_simulator/SensorDataRequest")
(setf (get dlite_simulator::SensorDataRequest :definition-)
      "Cell p

================================================================================
MSG: dlite_simulator/Cell
int32 x
int32 y 
---
Cell[] black
Cell[] white


================================================================================
MSG: dlite_simulator/Cell
int32 x
int32 y 
")

(setf (get dlite_simulator::SensorDataResponse :md5sum-) "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(setf (get dlite_simulator::SensorDataResponse :datatype-) "dlite_simulator/SensorDataResponse")
(setf (get dlite_simulator::SensorDataResponse :definition-)
      "Cell p

================================================================================
MSG: dlite_simulator/Cell
int32 x
int32 y 
---
Cell[] black
Cell[] white


================================================================================
MSG: dlite_simulator/Cell
int32 x
int32 y 
")



(provide :dlite_simulator/SensorData "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")


