// Auto-generated. Do not edit!

// (in-package osuf1_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p = null;
    }
    else {
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NPoint
    // Serialize message field [p]
    bufferOffset = _arraySerializer.float32(obj.p, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NPoint
    let len;
    let data = new NPoint(null);
    // Deserialize message field [p]
    data.p = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.p.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osuf1_common/NPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8139a50192c7dc7d77222a146aae12e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] p
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NPoint(null);
    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = []
    }

    return resolved;
    }
};

module.exports = NPoint;
