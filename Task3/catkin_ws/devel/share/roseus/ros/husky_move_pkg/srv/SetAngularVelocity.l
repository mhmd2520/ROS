;; Auto-generated. Do not edit!


(when (boundp 'husky_move_pkg::SetAngularVelocity)
  (if (not (find-package "HUSKY_MOVE_PKG"))
    (make-package "HUSKY_MOVE_PKG"))
  (shadow 'SetAngularVelocity (find-package "HUSKY_MOVE_PKG")))
(unless (find-package "HUSKY_MOVE_PKG::SETANGULARVELOCITY")
  (make-package "HUSKY_MOVE_PKG::SETANGULARVELOCITY"))
(unless (find-package "HUSKY_MOVE_PKG::SETANGULARVELOCITYREQUEST")
  (make-package "HUSKY_MOVE_PKG::SETANGULARVELOCITYREQUEST"))
(unless (find-package "HUSKY_MOVE_PKG::SETANGULARVELOCITYRESPONSE")
  (make-package "HUSKY_MOVE_PKG::SETANGULARVELOCITYRESPONSE"))

(in-package "ROS")





(defclass husky_move_pkg::SetAngularVelocityRequest
  :super ros::object
  :slots (_data ))

(defmethod husky_move_pkg::SetAngularVelocityRequest
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass husky_move_pkg::SetAngularVelocityResponse
  :super ros::object
  :slots (_message ))

(defmethod husky_move_pkg::SetAngularVelocityResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass husky_move_pkg::SetAngularVelocity
  :super ros::object
  :slots ())

(setf (get husky_move_pkg::SetAngularVelocity :md5sum-) "d836e4cd8888515d894c654e035acba6")
(setf (get husky_move_pkg::SetAngularVelocity :datatype-) "husky_move_pkg/SetAngularVelocity")
(setf (get husky_move_pkg::SetAngularVelocity :request) husky_move_pkg::SetAngularVelocityRequest)
(setf (get husky_move_pkg::SetAngularVelocity :response) husky_move_pkg::SetAngularVelocityResponse)

(defmethod husky_move_pkg::SetAngularVelocityRequest
  (:response () (instance husky_move_pkg::SetAngularVelocityResponse :init)))

(setf (get husky_move_pkg::SetAngularVelocityRequest :md5sum-) "d836e4cd8888515d894c654e035acba6")
(setf (get husky_move_pkg::SetAngularVelocityRequest :datatype-) "husky_move_pkg/SetAngularVelocityRequest")
(setf (get husky_move_pkg::SetAngularVelocityRequest :definition-)
      "float64 data
---
string message


")

(setf (get husky_move_pkg::SetAngularVelocityResponse :md5sum-) "d836e4cd8888515d894c654e035acba6")
(setf (get husky_move_pkg::SetAngularVelocityResponse :datatype-) "husky_move_pkg/SetAngularVelocityResponse")
(setf (get husky_move_pkg::SetAngularVelocityResponse :definition-)
      "float64 data
---
string message


")



(provide :husky_move_pkg/SetAngularVelocity "d836e4cd8888515d894c654e035acba6")


