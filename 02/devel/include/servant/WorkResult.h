// Generated by gencpp from file servant/WorkResult.msg
// DO NOT EDIT!


#ifndef SERVANT_MESSAGE_WORKRESULT_H
#define SERVANT_MESSAGE_WORKRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace servant
{
template <class ContainerAllocator>
struct WorkResult_
{
  typedef WorkResult_<ContainerAllocator> Type;

  WorkResult_()
    : time_elapsed()  {
    }
  WorkResult_(const ContainerAllocator& _alloc)
    : time_elapsed()  {
  (void)_alloc;
    }



   typedef ros::Duration _time_elapsed_type;
  _time_elapsed_type time_elapsed;




  typedef boost::shared_ptr< ::servant::WorkResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::servant::WorkResult_<ContainerAllocator> const> ConstPtr;

}; // struct WorkResult_

typedef ::servant::WorkResult_<std::allocator<void> > WorkResult;

typedef boost::shared_ptr< ::servant::WorkResult > WorkResultPtr;
typedef boost::shared_ptr< ::servant::WorkResult const> WorkResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::servant::WorkResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::servant::WorkResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace servant

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'servant': ['/home/jelen/code/jelen/ros/ros-playground/02/devel/share/servant/msg'], 'actionlib_msgs': ['/opt/ros/lunar/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::servant::WorkResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::servant::WorkResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servant::WorkResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servant::WorkResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servant::WorkResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servant::WorkResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::servant::WorkResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5cf2a912daf51cc83cb45e261a19d4f1";
  }

  static const char* value(const ::servant::WorkResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5cf2a912daf51cc8ULL;
  static const uint64_t static_value2 = 0x3cb45e261a19d4f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::servant::WorkResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "servant/WorkResult";
  }

  static const char* value(const ::servant::WorkResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::servant::WorkResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
duration time_elapsed\n\
";
  }

  static const char* value(const ::servant::WorkResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::servant::WorkResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_elapsed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorkResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::servant::WorkResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::servant::WorkResult_<ContainerAllocator>& v)
  {
    s << indent << "time_elapsed: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_elapsed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVANT_MESSAGE_WORKRESULT_H
