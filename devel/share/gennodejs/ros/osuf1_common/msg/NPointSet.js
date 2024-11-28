// Auto-generated. Do not edit!

// (in-package osuf1_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NPoint = require('./NPoint.js');

//-----------------------------------------------------------

class NPointSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NPointSet
    // Serialize message field [set]
    // Serialize the length for message field [set]
    bufferOffset = _serializer.uint32(obj.set.length, buffer, bufferOffset);
    obj.set.forEach((val) => {
      bufferOffset = NPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NPointSet
    let len;
    let data = new NPointSet(null);
    // Deserialize message field [set]
    // Deserialize array length for message field [set]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.set = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.set[i] = NPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.set.forEach((val) => {
      length += NPoint.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osuf1_common/NPointSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53f40bcd3e313df5264df51e6264f28c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NPointSet(null);
    if (msg.set !== undefined) {
      resolved.set = new Array(msg.set.length);
      for (let i = 0; i < resolved.set.length; ++i) {
        resolved.set[i] = NPoint.Resolve(msg.set[i]);
      }
    }
    else {
      resolved.set = []
    }

    return resolved;
    }
};

module.exports = NPointSet;
