; Auto-generated. Do not edit!


(cl:in-package ugv-msg)


;//! \htmlinclude UGV_message.msg.html

(cl:defclass <UGV_message> (roslisp-msg-protocol:ros-message)
  ((Forward_Right
    :reader Forward_Right
    :initarg :Forward_Right
    :type cl:integer
    :initform 0)
   (Reverse_Right
    :reader Reverse_Right
    :initarg :Reverse_Right
    :type cl:integer
    :initform 0)
   (Forward_Left
    :reader Forward_Left
    :initarg :Forward_Left
    :type cl:integer
    :initform 0)
   (Reverse_Left
    :reader Reverse_Left
    :initarg :Reverse_Left
    :type cl:integer
    :initform 0)
   (DAC_Right
    :reader DAC_Right
    :initarg :DAC_Right
    :type cl:float
    :initform 0.0)
   (DAC_Left
    :reader DAC_Left
    :initarg :DAC_Left
    :type cl:float
    :initform 0.0)
   (Brake_Right
    :reader Brake_Right
    :initarg :Brake_Right
    :type cl:integer
    :initform 0)
   (Brake_Left
    :reader Brake_Left
    :initarg :Brake_Left
    :type cl:integer
    :initform 0))
)

(cl:defclass UGV_message (<UGV_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UGV_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UGV_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ugv-msg:<UGV_message> is deprecated: use ugv-msg:UGV_message instead.")))

(cl:ensure-generic-function 'Forward_Right-val :lambda-list '(m))
(cl:defmethod Forward_Right-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Forward_Right-val is deprecated.  Use ugv-msg:Forward_Right instead.")
  (Forward_Right m))

(cl:ensure-generic-function 'Reverse_Right-val :lambda-list '(m))
(cl:defmethod Reverse_Right-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Reverse_Right-val is deprecated.  Use ugv-msg:Reverse_Right instead.")
  (Reverse_Right m))

(cl:ensure-generic-function 'Forward_Left-val :lambda-list '(m))
(cl:defmethod Forward_Left-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Forward_Left-val is deprecated.  Use ugv-msg:Forward_Left instead.")
  (Forward_Left m))

(cl:ensure-generic-function 'Reverse_Left-val :lambda-list '(m))
(cl:defmethod Reverse_Left-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Reverse_Left-val is deprecated.  Use ugv-msg:Reverse_Left instead.")
  (Reverse_Left m))

(cl:ensure-generic-function 'DAC_Right-val :lambda-list '(m))
(cl:defmethod DAC_Right-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:DAC_Right-val is deprecated.  Use ugv-msg:DAC_Right instead.")
  (DAC_Right m))

(cl:ensure-generic-function 'DAC_Left-val :lambda-list '(m))
(cl:defmethod DAC_Left-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:DAC_Left-val is deprecated.  Use ugv-msg:DAC_Left instead.")
  (DAC_Left m))

(cl:ensure-generic-function 'Brake_Right-val :lambda-list '(m))
(cl:defmethod Brake_Right-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Brake_Right-val is deprecated.  Use ugv-msg:Brake_Right instead.")
  (Brake_Right m))

(cl:ensure-generic-function 'Brake_Left-val :lambda-list '(m))
(cl:defmethod Brake_Left-val ((m <UGV_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ugv-msg:Brake_Left-val is deprecated.  Use ugv-msg:Brake_Left instead.")
  (Brake_Left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UGV_message>) ostream)
  "Serializes a message object of type '<UGV_message>"
  (cl:let* ((signed (cl:slot-value msg 'Forward_Right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Reverse_Right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Forward_Left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Reverse_Left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DAC_Right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DAC_Left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Brake_Right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Brake_Left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UGV_message>) istream)
  "Deserializes a message object of type '<UGV_message>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Forward_Right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reverse_Right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Forward_Left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reverse_Left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DAC_Right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DAC_Left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Brake_Right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Brake_Left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UGV_message>)))
  "Returns string type for a message object of type '<UGV_message>"
  "ugv/UGV_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UGV_message)))
  "Returns string type for a message object of type 'UGV_message"
  "ugv/UGV_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UGV_message>)))
  "Returns md5sum for a message object of type '<UGV_message>"
  "541f49227f5e048de585cd06317c60d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UGV_message)))
  "Returns md5sum for a message object of type 'UGV_message"
  "541f49227f5e048de585cd06317c60d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UGV_message>)))
  "Returns full string definition for message of type '<UGV_message>"
  (cl:format cl:nil "int32 Forward_Right~%int32 Reverse_Right~%int32 Forward_Left~%int32 Reverse_Left~%~%float32 DAC_Right~%float32 DAC_Left~%~%int32 Brake_Right~%int32 Brake_Left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UGV_message)))
  "Returns full string definition for message of type 'UGV_message"
  (cl:format cl:nil "int32 Forward_Right~%int32 Reverse_Right~%int32 Forward_Left~%int32 Reverse_Left~%~%float32 DAC_Right~%float32 DAC_Left~%~%int32 Brake_Right~%int32 Brake_Left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UGV_message>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UGV_message>))
  "Converts a ROS message object to a list"
  (cl:list 'UGV_message
    (cl:cons ':Forward_Right (Forward_Right msg))
    (cl:cons ':Reverse_Right (Reverse_Right msg))
    (cl:cons ':Forward_Left (Forward_Left msg))
    (cl:cons ':Reverse_Left (Reverse_Left msg))
    (cl:cons ':DAC_Right (DAC_Right msg))
    (cl:cons ':DAC_Left (DAC_Left msg))
    (cl:cons ':Brake_Right (Brake_Right msg))
    (cl:cons ':Brake_Left (Brake_Left msg))
))
