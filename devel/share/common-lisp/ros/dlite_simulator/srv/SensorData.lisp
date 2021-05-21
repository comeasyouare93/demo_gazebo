; Auto-generated. Do not edit!


(cl:in-package dlite_simulator-srv)


;//! \htmlinclude SensorData-request.msg.html

(cl:defclass <SensorData-request> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type dlite_simulator-msg:Cell
    :initform (cl:make-instance 'dlite_simulator-msg:Cell)))
)

(cl:defclass SensorData-request (<SensorData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dlite_simulator-srv:<SensorData-request> is deprecated: use dlite_simulator-srv:SensorData-request instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <SensorData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlite_simulator-srv:p-val is deprecated.  Use dlite_simulator-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorData-request>) ostream)
  "Serializes a message object of type '<SensorData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorData-request>) istream)
  "Deserializes a message object of type '<SensorData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorData-request>)))
  "Returns string type for a service object of type '<SensorData-request>"
  "dlite_simulator/SensorDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorData-request)))
  "Returns string type for a service object of type 'SensorData-request"
  "dlite_simulator/SensorDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorData-request>)))
  "Returns md5sum for a message object of type '<SensorData-request>"
  "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorData-request)))
  "Returns md5sum for a message object of type 'SensorData-request"
  "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorData-request>)))
  "Returns full string definition for message of type '<SensorData-request>"
  (cl:format cl:nil "Cell p~%~%================================================================================~%MSG: dlite_simulator/Cell~%int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorData-request)))
  "Returns full string definition for message of type 'SensorData-request"
  (cl:format cl:nil "Cell p~%~%================================================================================~%MSG: dlite_simulator/Cell~%int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorData-request
    (cl:cons ':p (p msg))
))
;//! \htmlinclude SensorData-response.msg.html

(cl:defclass <SensorData-response> (roslisp-msg-protocol:ros-message)
  ((black
    :reader black
    :initarg :black
    :type (cl:vector dlite_simulator-msg:Cell)
   :initform (cl:make-array 0 :element-type 'dlite_simulator-msg:Cell :initial-element (cl:make-instance 'dlite_simulator-msg:Cell)))
   (white
    :reader white
    :initarg :white
    :type (cl:vector dlite_simulator-msg:Cell)
   :initform (cl:make-array 0 :element-type 'dlite_simulator-msg:Cell :initial-element (cl:make-instance 'dlite_simulator-msg:Cell))))
)

(cl:defclass SensorData-response (<SensorData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dlite_simulator-srv:<SensorData-response> is deprecated: use dlite_simulator-srv:SensorData-response instead.")))

(cl:ensure-generic-function 'black-val :lambda-list '(m))
(cl:defmethod black-val ((m <SensorData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlite_simulator-srv:black-val is deprecated.  Use dlite_simulator-srv:black instead.")
  (black m))

(cl:ensure-generic-function 'white-val :lambda-list '(m))
(cl:defmethod white-val ((m <SensorData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlite_simulator-srv:white-val is deprecated.  Use dlite_simulator-srv:white instead.")
  (white m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorData-response>) ostream)
  "Serializes a message object of type '<SensorData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'black))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'black))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'white))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'white))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorData-response>) istream)
  "Deserializes a message object of type '<SensorData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'black) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'black)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dlite_simulator-msg:Cell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'white) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'white)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dlite_simulator-msg:Cell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorData-response>)))
  "Returns string type for a service object of type '<SensorData-response>"
  "dlite_simulator/SensorDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorData-response)))
  "Returns string type for a service object of type 'SensorData-response"
  "dlite_simulator/SensorDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorData-response>)))
  "Returns md5sum for a message object of type '<SensorData-response>"
  "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorData-response)))
  "Returns md5sum for a message object of type 'SensorData-response"
  "6d7179c08c0bd6c2f0b77bbe9e2ae2dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorData-response>)))
  "Returns full string definition for message of type '<SensorData-response>"
  (cl:format cl:nil "Cell[] black~%Cell[] white~%~%~%================================================================================~%MSG: dlite_simulator/Cell~%int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorData-response)))
  "Returns full string definition for message of type 'SensorData-response"
  (cl:format cl:nil "Cell[] black~%Cell[] white~%~%~%================================================================================~%MSG: dlite_simulator/Cell~%int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'black) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'white) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorData-response
    (cl:cons ':black (black msg))
    (cl:cons ':white (white msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SensorData)))
  'SensorData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SensorData)))
  'SensorData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorData)))
  "Returns string type for a service object of type '<SensorData>"
  "dlite_simulator/SensorData")