; Auto-generated. Do not edit!


(cl:in-package husky_move_pkg-srv)


;//! \htmlinclude Trigger-request.msg.html

(cl:defclass <Trigger-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Trigger-request (<Trigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_move_pkg-srv:<Trigger-request> is deprecated: use husky_move_pkg-srv:Trigger-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Trigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_move_pkg-srv:data-val is deprecated.  Use husky_move_pkg-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-request>) ostream)
  "Serializes a message object of type '<Trigger-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-request>) istream)
  "Deserializes a message object of type '<Trigger-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-request>)))
  "Returns string type for a service object of type '<Trigger-request>"
  "husky_move_pkg/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-request)))
  "Returns string type for a service object of type 'Trigger-request"
  "husky_move_pkg/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-request>)))
  "Returns md5sum for a message object of type '<Trigger-request>"
  "3f47c51e9da05852f0d7f484f9279955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-request)))
  "Returns md5sum for a message object of type 'Trigger-request"
  "3f47c51e9da05852f0d7f484f9279955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-request>)))
  "Returns full string definition for message of type '<Trigger-request>"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-request)))
  "Returns full string definition for message of type 'Trigger-request"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude Trigger-response.msg.html

(cl:defclass <Trigger-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Trigger-response (<Trigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name husky_move_pkg-srv:<Trigger-response> is deprecated: use husky_move_pkg-srv:Trigger-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_move_pkg-srv:success-val is deprecated.  Use husky_move_pkg-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader husky_move_pkg-srv:message-val is deprecated.  Use husky_move_pkg-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-response>) ostream)
  "Serializes a message object of type '<Trigger-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-response>) istream)
  "Deserializes a message object of type '<Trigger-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-response>)))
  "Returns string type for a service object of type '<Trigger-response>"
  "husky_move_pkg/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-response)))
  "Returns string type for a service object of type 'Trigger-response"
  "husky_move_pkg/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-response>)))
  "Returns md5sum for a message object of type '<Trigger-response>"
  "3f47c51e9da05852f0d7f484f9279955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-response)))
  "Returns md5sum for a message object of type 'Trigger-response"
  "3f47c51e9da05852f0d7f484f9279955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-response>)))
  "Returns full string definition for message of type '<Trigger-response>"
  (cl:format cl:nil "bool success      # Indicates whether the service call was successful~%string message   # A descriptive message that may accompany the success status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-response)))
  "Returns full string definition for message of type 'Trigger-response"
  (cl:format cl:nil "bool success      # Indicates whether the service call was successful~%string message   # A descriptive message that may accompany the success status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Trigger)))
  'Trigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Trigger)))
  'Trigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger)))
  "Returns string type for a service object of type '<Trigger>"
  "husky_move_pkg/Trigger")