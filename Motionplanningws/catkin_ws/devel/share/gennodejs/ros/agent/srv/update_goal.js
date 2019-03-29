// Auto-generated. Do not edit!

// (in-package agent.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class update_goalRequest {
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
    // Serializes a message object of type update_goalRequest
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
    //deserializes a message object of type update_goalRequest
    let len;
    let data = new update_goalRequest(null);
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
    return 'agent/update_goalRequest';
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
    const resolved = new update_goalRequest(null);
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

class update_goalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type update_goalResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type update_goalResponse
    let len;
    let data = new update_goalResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agent/update_goalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new update_goalResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: update_goalRequest,
  Response: update_goalResponse,
  md5sum() { return 'bbbe7a32ed0951b9a5042e2c7ab47bdc'; },
  datatype() { return 'agent/update_goal'; }
};
