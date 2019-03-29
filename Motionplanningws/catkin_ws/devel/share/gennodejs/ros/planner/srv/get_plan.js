// Auto-generated. Do not edit!

// (in-package planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class get_planRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serial_id = null;
      this.goal_x = null;
      this.goal_y = null;
      this.goal_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('serial_id')) {
        this.serial_id = initObj.serial_id
      }
      else {
        this.serial_id = '';
      }
      if (initObj.hasOwnProperty('goal_x')) {
        this.goal_x = initObj.goal_x
      }
      else {
        this.goal_x = 0;
      }
      if (initObj.hasOwnProperty('goal_y')) {
        this.goal_y = initObj.goal_y
      }
      else {
        this.goal_y = 0;
      }
      if (initObj.hasOwnProperty('goal_yaw')) {
        this.goal_yaw = initObj.goal_yaw
      }
      else {
        this.goal_yaw = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_planRequest
    // Serialize message field [serial_id]
    bufferOffset = _serializer.string(obj.serial_id, buffer, bufferOffset);
    // Serialize message field [goal_x]
    bufferOffset = _serializer.int64(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.int64(obj.goal_y, buffer, bufferOffset);
    // Serialize message field [goal_yaw]
    bufferOffset = _serializer.int64(obj.goal_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_planRequest
    let len;
    let data = new get_planRequest(null);
    // Deserialize message field [serial_id]
    data.serial_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [goal_yaw]
    data.goal_yaw = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.serial_id.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/get_planRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbbe7a32ed0951b9a5042e2c7ab47bdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string serial_id
    int64 goal_x
    int64 goal_y
    int64 goal_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_planRequest(null);
    if (msg.serial_id !== undefined) {
      resolved.serial_id = msg.serial_id;
    }
    else {
      resolved.serial_id = ''
    }

    if (msg.goal_x !== undefined) {
      resolved.goal_x = msg.goal_x;
    }
    else {
      resolved.goal_x = 0
    }

    if (msg.goal_y !== undefined) {
      resolved.goal_y = msg.goal_y;
    }
    else {
      resolved.goal_y = 0
    }

    if (msg.goal_yaw !== undefined) {
      resolved.goal_yaw = msg.goal_yaw;
    }
    else {
      resolved.goal_yaw = 0
    }

    return resolved;
    }
};

class get_planResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_planResponse
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_planResponse
    let len;
    let data = new get_planResponse(null);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner/get_planResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d6f138c7de7ef47c75d4b7e5df5472';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path path
    
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_planResponse(null);
    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: get_planRequest,
  Response: get_planResponse,
  md5sum() { return '8e144f8dc287d43924a78579fd276bf9'; },
  datatype() { return 'planner/get_plan'; }
};
