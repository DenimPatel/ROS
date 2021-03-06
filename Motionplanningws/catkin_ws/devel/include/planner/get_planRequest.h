// Generated by gencpp from file planner/get_planRequest.msg
// DO NOT EDIT!


#ifndef PLANNER_MESSAGE_GET_PLANREQUEST_H
#define PLANNER_MESSAGE_GET_PLANREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace planner
{
template <class ContainerAllocator>
struct get_planRequest_
{
  typedef get_planRequest_<ContainerAllocator> Type;

  get_planRequest_()
    : serial_id()
    , goal_x(0)
    , goal_y(0)
    , goal_yaw(0)  {
    }
  get_planRequest_(const ContainerAllocator& _alloc)
    : serial_id(_alloc)
    , goal_x(0)
    , goal_y(0)
    , goal_yaw(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _serial_id_type;
  _serial_id_type serial_id;

   typedef int64_t _goal_x_type;
  _goal_x_type goal_x;

   typedef int64_t _goal_y_type;
  _goal_y_type goal_y;

   typedef int64_t _goal_yaw_type;
  _goal_yaw_type goal_yaw;





  typedef boost::shared_ptr< ::planner::get_planRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner::get_planRequest_<ContainerAllocator> const> ConstPtr;

}; // struct get_planRequest_

typedef ::planner::get_planRequest_<std::allocator<void> > get_planRequest;

typedef boost::shared_ptr< ::planner::get_planRequest > get_planRequestPtr;
typedef boost::shared_ptr< ::planner::get_planRequest const> get_planRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner::get_planRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner::get_planRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::planner::get_planRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner::get_planRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner::get_planRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner::get_planRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::get_planRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::get_planRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbbe7a32ed0951b9a5042e2c7ab47bdc";
  }

  static const char* value(const ::planner::get_planRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbbe7a32ed0951b9ULL;
  static const uint64_t static_value2 = 0xa5042e2c7ab47bdcULL;
};

template<class ContainerAllocator>
struct DataType< ::planner::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner/get_planRequest";
  }

  static const char* value(const ::planner::get_planRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner::get_planRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string serial_id\n\
int64 goal_x\n\
int64 goal_y\n\
int64 goal_yaw\n\
";
  }

  static const char* value(const ::planner::get_planRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner::get_planRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.serial_id);
      stream.next(m.goal_x);
      stream.next(m.goal_y);
      stream.next(m.goal_yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_planRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner::get_planRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner::get_planRequest_<ContainerAllocator>& v)
  {
    s << indent << "serial_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.serial_id);
    s << indent << "goal_x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.goal_x);
    s << indent << "goal_y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.goal_y);
    s << indent << "goal_yaw: ";
    Printer<int64_t>::stream(s, indent + "  ", v.goal_yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MESSAGE_GET_PLANREQUEST_H
