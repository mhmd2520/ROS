;; Auto-generated. Do not edit!


(when (boundp 'husky_move_pkg::Trigger)
  (if (not (find-package "HUSKY_MOVE_PKG"))
    (make-package "HUSKY_MOVE_PKG"))
  (shadow 'Trigger (find-package "HUSKY_MOVE_PKG")))
(unless (find-package "HUSKY_MOVE_PKG::TRIGGER")
  (make-package "HUSKY_MOVE_PKG::TRIGGER"))
(unless (find-package "HUSKY_MOVE_PKG::TRIGGERREQUEST")
  (make-package "HUSKY_MOVE_PKG::TRIGGERREQUEST"))
(unless (find-package "HUSKY_MOVE_PKG::TRIGGERRESPONSE")
  (make-package "HUSKY_MOVE_PKG::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass husky_move_pkg::TriggerRequest
  :super ros::object
  :slots (_data ))

(defmethod husky_move_pkg::TriggerRequest
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

(defclass husky_move_pkg::TriggerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod husky_move_pkg::TriggerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass husky_move_pkg::Trigger
  :super ros::object
  :slots ())

(setf (get husky_move_pkg::Trigger :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get husky_move_pkg::Trigger :datatype-) "husky_move_pkg/Trigger")
(setf (get husky_move_pkg::Trigger :request) husky_move_pkg::TriggerRequest)
(setf (get husky_move_pkg::Trigger :response) husky_move_pkg::TriggerResponse)

(defmethod husky_move_pkg::TriggerRequest
  (:response () (instance husky_move_pkg::TriggerResponse :init)))

(setf (get husky_move_pkg::TriggerRequest :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get husky_move_pkg::TriggerRequest :datatype-) "husky_move_pkg/TriggerRequest")
(setf (get husky_move_pkg::TriggerRequest :definition-)
      "float64 data
---
bool success      # Indicates whether the service call was successful
string message   # A descriptive message that may accompany the success status


")

(setf (get husky_move_pkg::TriggerResponse :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get husky_move_pkg::TriggerResponse :datatype-) "husky_move_pkg/TriggerResponse")
(setf (get husky_move_pkg::TriggerResponse :definition-)
      "float64 data
---
bool success      # Indicates whether the service call was successful
string message   # A descriptive message that may accompany the success status


")



(provide :husky_move_pkg/Trigger "3f47c51e9da05852f0d7f484f9279955")


