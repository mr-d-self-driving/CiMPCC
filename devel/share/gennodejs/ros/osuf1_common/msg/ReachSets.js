// Auto-generated. Do not edit!

// (in-package osuf1_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NPointSet = require('./NPointSet.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ReachSets {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sets = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sets')) {
        this.sets = initObj.sets
      }
      else {
        this.sets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReachSets
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sets]
    // Serialize the length for message field [sets]
    bufferOffset = _serializer.uint32(obj.sets.length, buffer, bufferOffset);
    obj.sets.forEach((val) => {
      bufferOffset = NPointSet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReachSets
    let len;
    let data = new ReachSets(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sets]
    // Deserialize array length for message field [sets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sets[i] = NPointSet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sets.forEach((val) => {
      length += NPointSet.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osuf1_common/ReachSets';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aec3e3fcb8a9e4d22874c0bd0b7379f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    NPointSet[] sets
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
    string frame_id
    
    ================================================================================
    MSG: osuf1_common/NPointSet
    NPoint[] set 
    ================================================================================
    MSG: osuf1_common/NPoint
    float32[] p
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReachSets(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sets !== undefined) {
      resolved.sets = new Array(msg.sets.length);
      for (let i = 0; i < resolved.sets.length; ++i) {
        resolved.sets[i] = NPointSet.Resolve(msg.sets[i]);
      }
    }
    else {
      resolved.sets = []
    }

    return resolved;
    }
};

module.exports = ReachSets;
