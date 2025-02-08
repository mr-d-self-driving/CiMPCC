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

class MPC_prediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.inputs = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('inputs')) {
        this.inputs = initObj.inputs
      }
      else {
        this.inputs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MPC_prediction
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float32(obj.state, buffer, bufferOffset, null);
    // Serialize message field [inputs]
    bufferOffset = _arraySerializer.float32(obj.inputs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MPC_prediction
    let len;
    let data = new MPC_prediction(null);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [inputs]
    data.inputs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.state.length;
    length += 4 * object.inputs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'osuf1_common/MPC_prediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18f71d97ec5d2c12b5676c1814e14a05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] state
    float32[] inputs
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MPC_prediction(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    if (msg.inputs !== undefined) {
      resolved.inputs = msg.inputs;
    }
    else {
      resolved.inputs = []
    }

    return resolved;
    }
};

module.exports = MPC_prediction;
