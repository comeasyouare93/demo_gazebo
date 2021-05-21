// Auto-generated. Do not edit!

// (in-package dlite_simulator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cell = require('../msg/Cell.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SensorDataRequest {
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
        this.p = new Cell();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorDataRequest
    // Serialize message field [p]
    bufferOffset = Cell.serialize(obj.p, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorDataRequest
    let len;
    let data = new SensorDataRequest(null);
    // Deserialize message field [p]
    data.p = Cell.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dlite_simulator/SensorDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7cb4f7a9b6a6ff2c7595798bb991bf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Cell p
    
    ================================================================================
    MSG: dlite_simulator/Cell
    int32 x
    int32 y 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorDataRequest(null);
    if (msg.p !== undefined) {
      resolved.p = Cell.Resolve(msg.p)
    }
    else {
      resolved.p = new Cell()
    }

    return resolved;
    }
};

class SensorDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.black = null;
      this.white = null;
    }
    else {
      if (initObj.hasOwnProperty('black')) {
        this.black = initObj.black
      }
      else {
        this.black = [];
      }
      if (initObj.hasOwnProperty('white')) {
        this.white = initObj.white
      }
      else {
        this.white = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorDataResponse
    // Serialize message field [black]
    // Serialize the length for message field [black]
    bufferOffset = _serializer.uint32(obj.black.length, buffer, bufferOffset);
    obj.black.forEach((val) => {
      bufferOffset = Cell.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [white]
    // Serialize the length for message field [white]
    bufferOffset = _serializer.uint32(obj.white.length, buffer, bufferOffset);
    obj.white.forEach((val) => {
      bufferOffset = Cell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorDataResponse
    let len;
    let data = new SensorDataResponse(null);
    // Deserialize message field [black]
    // Deserialize array length for message field [black]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.black = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.black[i] = Cell.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [white]
    // Deserialize array length for message field [white]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.white = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.white[i] = Cell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.black.length;
    length += 8 * object.white.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dlite_simulator/SensorDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db43212560cf105b8c0fd53f481bcd37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Cell[] black
    Cell[] white
    
    
    ================================================================================
    MSG: dlite_simulator/Cell
    int32 x
    int32 y 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorDataResponse(null);
    if (msg.black !== undefined) {
      resolved.black = new Array(msg.black.length);
      for (let i = 0; i < resolved.black.length; ++i) {
        resolved.black[i] = Cell.Resolve(msg.black[i]);
      }
    }
    else {
      resolved.black = []
    }

    if (msg.white !== undefined) {
      resolved.white = new Array(msg.white.length);
      for (let i = 0; i < resolved.white.length; ++i) {
        resolved.white[i] = Cell.Resolve(msg.white[i]);
      }
    }
    else {
      resolved.white = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SensorDataRequest,
  Response: SensorDataResponse,
  md5sum() { return '6d7179c08c0bd6c2f0b77bbe9e2ae2dc'; },
  datatype() { return 'dlite_simulator/SensorData'; }
};
