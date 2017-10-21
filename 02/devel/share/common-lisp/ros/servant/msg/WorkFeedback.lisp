; Auto-generated. Do not edit!


(cl:in-package servant-msg)


;//! \htmlinclude WorkFeedback.msg.html

(cl:defclass <WorkFeedback> (roslisp-msg-protocol:ros-message)
  ((time_elapsed
    :reader time_elapsed
    :initarg :time_elapsed
    :type cl:real
    :initform 0)
   (time_remaining
    :reader time_remaining
    :initarg :time_remaining
    :type cl:real
    :initform 0))
)

(cl:defclass WorkFeedback (<WorkFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servant-msg:<WorkFeedback> is deprecated: use servant-msg:WorkFeedback instead.")))

(cl:ensure-generic-function 'time_elapsed-val :lambda-list '(m))
(cl:defmethod time_elapsed-val ((m <WorkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servant-msg:time_elapsed-val is deprecated.  Use servant-msg:time_elapsed instead.")
  (time_elapsed m))

(cl:ensure-generic-function 'time_remaining-val :lambda-list '(m))
(cl:defmethod time_remaining-val ((m <WorkFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servant-msg:time_remaining-val is deprecated.  Use servant-msg:time_remaining instead.")
  (time_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkFeedback>) ostream)
  "Serializes a message object of type '<WorkFeedback>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_elapsed)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_elapsed) (cl:floor (cl:slot-value msg 'time_elapsed)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_remaining)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_remaining) (cl:floor (cl:slot-value msg 'time_remaining)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkFeedback>) istream)
  "Deserializes a message object of type '<WorkFeedback>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_elapsed) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_remaining) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkFeedback>)))
  "Returns string type for a message object of type '<WorkFeedback>"
  "servant/WorkFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkFeedback)))
  "Returns string type for a message object of type 'WorkFeedback"
  "servant/WorkFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkFeedback>)))
  "Returns md5sum for a message object of type '<WorkFeedback>"
  "f7ef31d21e406bbd1f38a63801a29be7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkFeedback)))
  "Returns md5sum for a message object of type 'WorkFeedback"
  "f7ef31d21e406bbd1f38a63801a29be7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkFeedback>)))
  "Returns full string definition for message of type '<WorkFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%duration time_elapsed~%duration time_remaining~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkFeedback)))
  "Returns full string definition for message of type 'WorkFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%duration time_elapsed~%duration time_remaining~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkFeedback>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkFeedback
    (cl:cons ':time_elapsed (time_elapsed msg))
    (cl:cons ':time_remaining (time_remaining msg))
))
