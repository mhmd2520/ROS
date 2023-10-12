// Generated by gencpp from file husky_move_pkg/TriggerRequest.msg
// DO NOT EDIT!


#ifndef HUSKY_MOVE_PKG_MESSAGE_TRIGGERREQUEST_H
#define HUSKY_MOVE_PKG_MESSAGE_TRIGGERREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace husky_move_pkg
{
template <class ContainerAllocator>
struct TriggerRequest_
{
  typedef TriggerRequest_<ContainerAllocator> Type;

  TriggerRequest_()
    : data(0.0)  {
    }
  TriggerRequest_(const ContainerAllocator& _alloc)
    : data(0.0)  {
  (void)_alloc;
    }



   typedef double _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TriggerRequest_

typedef ::husky_move_pkg::TriggerRequest_<std::allocator<void> > TriggerRequest;

typedef boost::shared_ptr< ::husky_move_pkg::TriggerRequest > TriggerRequestPtr;
typedef boost::shared_ptr< ::husky_move_pkg::TriggerRequest const> TriggerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::husky_move_pkg::TriggerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::husky_move_pkg::TriggerRequest_<ContainerAllocator1> & lhs, const ::husky_move_pkg::TriggerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::husky_move_pkg::TriggerRequest_<ContainerAllocator1> & lhs, const ::husky_move_pkg::TriggerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace husky_move_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fdb28210bfa9d7c91146260178d9a584";
  }

  static const char* value(const ::husky_move_pkg::TriggerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfdb28210bfa9d7c9ULL;
  static const uint64_t static_value2 = 0x1146260178d9a584ULL;
};

template<class ContainerAllocator>
struct DataType< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "husky_move_pkg/TriggerRequest";
  }

  static const char* value(const ::husky_move_pkg::TriggerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 data\n"
;
  }

  static const char* value(const ::husky_move_pkg::TriggerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TriggerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::husky_move_pkg::TriggerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::husky_move_pkg::TriggerRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<double>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HUSKY_MOVE_PKG_MESSAGE_TRIGGERREQUEST_H
