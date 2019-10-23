;; Auto-generated. Do not edit!


(when (boundp 'ugv::UGV_message)
  (if (not (find-package "UGV"))
    (make-package "UGV"))
  (shadow 'UGV_message (find-package "UGV")))
(unless (find-package "UGV::UGV_MESSAGE")
  (make-package "UGV::UGV_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude UGV_message.msg.html


(defclass ugv::UGV_message
  :super ros::object
  :slots (_Forward_Right _Reverse_Right _Forward_Left _Reverse_Left _DAC_Right _DAC_Left _Brake_Right _Brake_Left ))

(defmethod ugv::UGV_message
  (:init
   (&key
    ((:Forward_Right __Forward_Right) 0)
    ((:Reverse_Right __Reverse_Right) 0)
    ((:Forward_Left __Forward_Left) 0)
    ((:Reverse_Left __Reverse_Left) 0)
    ((:DAC_Right __DAC_Right) 0.0)
    ((:DAC_Left __DAC_Left) 0.0)
    ((:Brake_Right __Brake_Right) 0)
    ((:Brake_Left __Brake_Left) 0)
    )
   (send-super :init)
   (setq _Forward_Right (round __Forward_Right))
   (setq _Reverse_Right (round __Reverse_Right))
   (setq _Forward_Left (round __Forward_Left))
   (setq _Reverse_Left (round __Reverse_Left))
   (setq _DAC_Right (float __DAC_Right))
   (setq _DAC_Left (float __DAC_Left))
   (setq _Brake_Right (round __Brake_Right))
   (setq _Brake_Left (round __Brake_Left))
   self)
  (:Forward_Right
   (&optional __Forward_Right)
   (if __Forward_Right (setq _Forward_Right __Forward_Right)) _Forward_Right)
  (:Reverse_Right
   (&optional __Reverse_Right)
   (if __Reverse_Right (setq _Reverse_Right __Reverse_Right)) _Reverse_Right)
  (:Forward_Left
   (&optional __Forward_Left)
   (if __Forward_Left (setq _Forward_Left __Forward_Left)) _Forward_Left)
  (:Reverse_Left
   (&optional __Reverse_Left)
   (if __Reverse_Left (setq _Reverse_Left __Reverse_Left)) _Reverse_Left)
  (:DAC_Right
   (&optional __DAC_Right)
   (if __DAC_Right (setq _DAC_Right __DAC_Right)) _DAC_Right)
  (:DAC_Left
   (&optional __DAC_Left)
   (if __DAC_Left (setq _DAC_Left __DAC_Left)) _DAC_Left)
  (:Brake_Right
   (&optional __Brake_Right)
   (if __Brake_Right (setq _Brake_Right __Brake_Right)) _Brake_Right)
  (:Brake_Left
   (&optional __Brake_Left)
   (if __Brake_Left (setq _Brake_Left __Brake_Left)) _Brake_Left)
  (:serialization-length
   ()
   (+
    ;; int32 _Forward_Right
    4
    ;; int32 _Reverse_Right
    4
    ;; int32 _Forward_Left
    4
    ;; int32 _Reverse_Left
    4
    ;; float32 _DAC_Right
    4
    ;; float32 _DAC_Left
    4
    ;; int32 _Brake_Right
    4
    ;; int32 _Brake_Left
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Forward_Right
       (write-long _Forward_Right s)
     ;; int32 _Reverse_Right
       (write-long _Reverse_Right s)
     ;; int32 _Forward_Left
       (write-long _Forward_Left s)
     ;; int32 _Reverse_Left
       (write-long _Reverse_Left s)
     ;; float32 _DAC_Right
       (sys::poke _DAC_Right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DAC_Left
       (sys::poke _DAC_Left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Brake_Right
       (write-long _Brake_Right s)
     ;; int32 _Brake_Left
       (write-long _Brake_Left s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Forward_Right
     (setq _Forward_Right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Reverse_Right
     (setq _Reverse_Right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Forward_Left
     (setq _Forward_Left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Reverse_Left
     (setq _Reverse_Left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _DAC_Right
     (setq _DAC_Right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DAC_Left
     (setq _DAC_Left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Brake_Right
     (setq _Brake_Right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Brake_Left
     (setq _Brake_Left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ugv::UGV_message :md5sum-) "541f49227f5e048de585cd06317c60d9")
(setf (get ugv::UGV_message :datatype-) "ugv/UGV_message")
(setf (get ugv::UGV_message :definition-)
      "int32 Forward_Right
int32 Reverse_Right
int32 Forward_Left
int32 Reverse_Left

float32 DAC_Right
float32 DAC_Left

int32 Brake_Right
int32 Brake_Left

")



(provide :ugv/UGV_message "541f49227f5e048de585cd06317c60d9")


