; Auto-generated. Do not edit!


(cl:in-package dlite_simulator-msg)


;//! \htmlinclude Cell.msg.html

(cl:defclass <Cell> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Cell (<Cell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dlite_simulator-msg:<Cell> is deprecated: use dlite_simulator-msg:Cell instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlite_simulator-msg:x-val is deprecated.  Use dlite_simulator-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlite_simulator-msg:y-val is deprecated.  Use dlite_simulator-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cell>) ostream)
  "Serializes a message object of type '<Cell>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cell>) istream)
  "Deserializes a message object of type '<Cell>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cell>)))
  "Returns string type for a message object of type '<Cell>"
  "dlite_simulator/Cell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cell)))
  "Returns string type for a message object of type 'Cell"
  "dlite_simulator/Cell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cell>)))
  "Returns md5sum for a message object of type '<Cell>"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cell)))
  "Returns md5sum for a message object of type 'Cell"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cell>)))
  "Returns full string definition for message of type '<Cell>"
  (cl:format cl:nil "int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cell)))
  "Returns full string definition for message of type 'Cell"
  (cl:format cl:nil "int32 x~%int32 y ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cell>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cell>))
  "Converts a ROS message object to a list"
  (cl:list 'Cell
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
