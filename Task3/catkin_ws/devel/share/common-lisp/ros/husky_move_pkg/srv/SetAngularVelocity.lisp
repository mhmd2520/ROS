; Auto-generated. Do not edit!


(cl:in-package husky_move_pkg-srv)


;//! \htmlinclude SetAngularVelocity-request.msg.html

(cl:defclass <SetAngularVelocity-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAngularVelocity-request (<SetAngularVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAngularVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAngularVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_move_pkg-srv:<SetAngularVelocity-request> is deprecated: use husky_move_pkg-srv:SetAngularVelocity-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetAngularVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_move_pkg-srv:data-val is deprecated.  Use husky_move_pkg-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAngularVelocity-request>) ostream)
  "Serializes a message object of type '<SetAngularVelocity-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAngularVelocity-request>) istream)
  "Deserializes a message object of type '<SetAngularVelocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAngularVelocity-request>)))
  "Returns string type for a service object of type '<SetAngularVelocity-request>"
  "husky_move_pkg/SetAngularVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAngularVelocity-request)))
  "Returns string type for a service object of type 'SetAngularVelocity-request"
  "husky_move_pkg/SetAngularVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAngularVelocity-request>)))
  "Returns md5sum for a message object of type '<SetAngularVelocity-request>"
  "d836e4cd8888515d894c654e035acba6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAngularVelocity-request)))
  "Returns md5sum for a message object of type 'SetAngularVelocity-request"
  "d836e4cd8888515d894c654e035acba6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAngularVelocity-request>)))
  "Returns full string definition for message of type '<SetAngularVelocity-request>"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAngularVelocity-request)))
  "Returns full string definition for message of type 'SetAngularVelocity-request"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAngularVelocity-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAngularVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAngularVelocity-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetAngularVelocity-response.msg.html

(cl:defclass <SetAngularVelocity-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetAngularVelocity-response (<SetAngularVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAngularVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAngularVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_move_pkg-srv:<SetAngularVelocity-response> is deprecated: use husky_move_pkg-srv:SetAngularVelocity-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAngularVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_move_pkg-srv:message-val is deprecated.  Use husky_move_pkg-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAngularVelocity-response>) ostream)
  "Serializes a message object of type '<SetAngularVelocity-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAngularVelocity-response>) istream)
  "Deserializes a message object of type '<SetAngularVelocity-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAngularVelocity-response>)))
  "Returns string type for a service object of type '<SetAngularVelocity-response>"
  "husky_move_pkg/SetAngularVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAngularVelocity-response)))
  "Returns string type for a service object of type 'SetAngularVelocity-response"
  "husky_move_pkg/SetAngularVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAngularVelocity-response>)))
  "Returns md5sum for a message object of type '<SetAngularVelocity-response>"
  "d836e4cd8888515d894c654e035acba6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAngularVelocity-response)))
  "Returns md5sum for a message object of type 'SetAngularVelocity-response"
  "d836e4cd8888515d894c654e035acba6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAngularVelocity-response>)))
  "Returns full string definition for message of type '<SetAngularVelocity-response>"
  (cl:format cl:nil "string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAngularVelocity-response)))
  "Returns full string definition for message of type 'SetAngularVelocity-response"
  (cl:format cl:nil "string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAngularVelocity-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAngularVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAngularVelocity-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAngularVelocity)))
  'SetAngularVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAngularVelocity)))
  'SetAngularVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAngularVelocity)))
  "Returns string type for a service object of type '<SetAngularVelocity>"
  "husky_move_pkg/SetAngularVelocity")