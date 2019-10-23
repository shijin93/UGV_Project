// Auto-generated. Do not edit!

// (in-package ugv.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UGV_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Forward_Right = null;
      this.Reverse_Right = null;
      this.Forward_Left = null;
      this.Reverse_Left = null;
      this.DAC_Right = null;
      this.DAC_Left = null;
      this.Brake_Right = null;
      this.Brake_Left = null;
    }
    else {
      if (initObj.hasOwnProperty('Forward_Right')) {
        this.Forward_Right = initObj.Forward_Right
      }
      else {
        this.Forward_Right = 0;
      }
      if (initObj.hasOwnProperty('Reverse_Right')) {
        this.Reverse_Right = initObj.Reverse_Right
      }
      else {
        this.Reverse_Right = 0;
      }
      if (initObj.hasOwnProperty('Forward_Left')) {
        this.Forward_Left = initObj.Forward_Left
      }
      else {
        this.Forward_Left = 0;
      }
      if (initObj.hasOwnProperty('Reverse_Left')) {
        this.Reverse_Left = initObj.Reverse_Left
      }
      else {
        this.Reverse_Left = 0;
      }
      if (initObj.hasOwnProperty('DAC_Right')) {
        this.DAC_Right = initObj.DAC_Right
      }
      else {
        this.DAC_Right = 0.0;
      }
      if (initObj.hasOwnProperty('DAC_Left')) {
        this.DAC_Left = initObj.DAC_Left
      }
      else {
        this.DAC_Left = 0.0;
      }
      if (initObj.hasOwnProperty('Brake_Right')) {
        this.Brake_Right = initObj.Brake_Right
      }
      else {
        this.Brake_Right = 0;
      }
      if (initObj.hasOwnProperty('Brake_Left')) {
        this.Brake_Left = initObj.Brake_Left
      }
      else {
        this.Brake_Left = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UGV_message
    // Serialize message field [Forward_Right]
    bufferOffset = _serializer.int32(obj.Forward_Right, buffer, bufferOffset);
    // Serialize message field [Reverse_Right]
    bufferOffset = _serializer.int32(obj.Reverse_Right, buffer, bufferOffset);
    // Serialize message field [Forward_Left]
    bufferOffset = _serializer.int32(obj.Forward_Left, buffer, bufferOffset);
    // Serialize message field [Reverse_Left]
    bufferOffset = _serializer.int32(obj.Reverse_Left, buffer, bufferOffset);
    // Serialize message field [DAC_Right]
    bufferOffset = _serializer.float32(obj.DAC_Right, buffer, bufferOffset);
    // Serialize message field [DAC_Left]
    bufferOffset = _serializer.float32(obj.DAC_Left, buffer, bufferOffset);
    // Serialize message field [Brake_Right]
    bufferOffset = _serializer.int32(obj.Brake_Right, buffer, bufferOffset);
    // Serialize message field [Brake_Left]
    bufferOffset = _serializer.int32(obj.Brake_Left, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UGV_message
    let len;
    let data = new UGV_message(null);
    // Deserialize message field [Forward_Right]
    data.Forward_Right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reverse_Right]
    data.Reverse_Right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Forward_Left]
    data.Forward_Left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reverse_Left]
    data.Reverse_Left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [DAC_Right]
    data.DAC_Right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DAC_Left]
    data.DAC_Left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Brake_Right]
    data.Brake_Right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Brake_Left]
    data.Brake_Left = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ugv/UGV_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '541f49227f5e048de585cd06317c60d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Forward_Right
    int32 Reverse_Right
    int32 Forward_Left
    int32 Reverse_Left
    
    float32 DAC_Right
    float32 DAC_Left
    
    int32 Brake_Right
    int32 Brake_Left
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UGV_message(null);
    if (msg.Forward_Right !== undefined) {
      resolved.Forward_Right = msg.Forward_Right;
    }
    else {
      resolved.Forward_Right = 0
    }

    if (msg.Reverse_Right !== undefined) {
      resolved.Reverse_Right = msg.Reverse_Right;
    }
    else {
      resolved.Reverse_Right = 0
    }

    if (msg.Forward_Left !== undefined) {
      resolved.Forward_Left = msg.Forward_Left;
    }
    else {
      resolved.Forward_Left = 0
    }

    if (msg.Reverse_Left !== undefined) {
      resolved.Reverse_Left = msg.Reverse_Left;
    }
    else {
      resolved.Reverse_Left = 0
    }

    if (msg.DAC_Right !== undefined) {
      resolved.DAC_Right = msg.DAC_Right;
    }
    else {
      resolved.DAC_Right = 0.0
    }

    if (msg.DAC_Left !== undefined) {
      resolved.DAC_Left = msg.DAC_Left;
    }
    else {
      resolved.DAC_Left = 0.0
    }

    if (msg.Brake_Right !== undefined) {
      resolved.Brake_Right = msg.Brake_Right;
    }
    else {
      resolved.Brake_Right = 0
    }

    if (msg.Brake_Left !== undefined) {
      resolved.Brake_Left = msg.Brake_Left;
    }
    else {
      resolved.Brake_Left = 0
    }

    return resolved;
    }
};

module.exports = UGV_message;
