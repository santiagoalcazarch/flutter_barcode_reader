// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos/protos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// AUTO GENERATED FILE, DO NOT EDIT!
//
// Generated by ./generate_proto.sh

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// protos/barcode_format.proto
enum BarcodeFormat: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0
  case aztec // = 1
  case code39 // = 2
  case code93 // = 3
  case ean8 // = 4
  case ean13 // = 5
  case code128 // = 6
  case dataMatrix // = 7
  case qr // = 8
  case interleaved2Of5 // = 9
  case upce // = 10
  case pdf417 // = 11
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .aztec
    case 2: self = .code39
    case 3: self = .code93
    case 4: self = .ean8
    case 5: self = .ean13
    case 6: self = .code128
    case 7: self = .dataMatrix
    case 8: self = .qr
    case 9: self = .interleaved2Of5
    case 10: self = .upce
    case 11: self = .pdf417
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .aztec: return 1
    case .code39: return 2
    case .code93: return 3
    case .ean8: return 4
    case .ean13: return 5
    case .code128: return 6
    case .dataMatrix: return 7
    case .qr: return 8
    case .interleaved2Of5: return 9
    case .upce: return 10
    case .pdf417: return 11
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension BarcodeFormat: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [BarcodeFormat] = [
    .unknown,
    .aztec,
    .code39,
    .code93,
    .ean8,
    .ean13,
    .code128,
    .dataMatrix,
    .qr,
    .interleaved2Of5,
    .upce,
    .pdf417,
  ]
}

#endif  // swift(>=4.2)

/// protos/scan_result.proto
enum ResultType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case barcode // = 0
  case cancelled // = 1
  case error // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .barcode
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .barcode
    case 1: self = .cancelled
    case 2: self = .error
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .barcode: return 0
    case .cancelled: return 1
    case .error: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ResultType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ResultType] = [
    .barcode,
    .cancelled,
    .error,
  ]
}

#endif  // swift(>=4.2)

/// protos/android_configuration.proto
struct AndroidConfiguration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// You can optionally set aspect ratio tolerance level
  /// that is used in calculating the optimal Camera preview size.
  /// On several Huawei devices you need to set this to 0.5.
  /// This parameter is only supported on Android devices.
  var aspectTolerance: Double = 0

  /// Set to true to enable auto focus
  /// This parameter is only supported on Android devices.
  var useAutoFocus: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// protos/configuration.proto
struct Configuration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Strings which are displayed to the user
  var strings: Dictionary<String,String> = [:]

  /// Restricts the barcode format which should be read
  var restrictFormat: [BarcodeFormat] = []

  /// Index of the camera which should used. -1 uses the default camera
  var useCamera: Int32 = 0

  /// Android specific configuration
  var android: AndroidConfiguration {
    get {return _android ?? AndroidConfiguration()}
    set {_android = newValue}
  }
  /// Returns true if `android` has been explicitly set.
  var hasAndroid: Bool {return self._android != nil}
  /// Clears the value of `android`. Subsequent reads from it will return its default value.
  mutating func clearAndroid() {self._android = nil}

  /// Set to true to automatically enable flash on camera start
  var autoEnableFlash: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _android: AndroidConfiguration? = nil
}

struct ScanResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Represents the type of the result
  var type: ResultType = .barcode

  /// The barcode itself if the result type is barcode.
  /// If the result type is error it contains the error message
  var rawContent: String = String()

  /// The barcode format
  var format: BarcodeFormat = .unknown

  /// Array of bytes readed, incluiding parentheses and other
  /// characters
  var rawBytes: String = String()

  /// If the format is unknown, this field holds additional information
  var formatNote: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension BarcodeFormat: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "unknown"),
    1: .same(proto: "aztec"),
    2: .same(proto: "code39"),
    3: .same(proto: "code93"),
    4: .same(proto: "ean8"),
    5: .same(proto: "ean13"),
    6: .same(proto: "code128"),
    7: .same(proto: "dataMatrix"),
    8: .same(proto: "qr"),
    9: .same(proto: "interleaved2of5"),
    10: .same(proto: "upce"),
    11: .same(proto: "pdf417"),
  ]
}

extension ResultType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Barcode"),
    1: .same(proto: "Cancelled"),
    2: .same(proto: "Error"),
  ]
}

extension AndroidConfiguration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AndroidConfiguration"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "aspectTolerance"),
    2: .same(proto: "useAutoFocus"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.aspectTolerance)
      case 2: try decoder.decodeSingularBoolField(value: &self.useAutoFocus)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.aspectTolerance != 0 {
      try visitor.visitSingularDoubleField(value: self.aspectTolerance, fieldNumber: 1)
    }
    if self.useAutoFocus != false {
      try visitor.visitSingularBoolField(value: self.useAutoFocus, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AndroidConfiguration, rhs: AndroidConfiguration) -> Bool {
    if lhs.aspectTolerance != rhs.aspectTolerance {return false}
    if lhs.useAutoFocus != rhs.useAutoFocus {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Configuration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Configuration"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "strings"),
    2: .same(proto: "restrictFormat"),
    3: .same(proto: "useCamera"),
    4: .same(proto: "android"),
    5: .same(proto: "autoEnableFlash"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.strings)
      case 2: try decoder.decodeRepeatedEnumField(value: &self.restrictFormat)
      case 3: try decoder.decodeSingularInt32Field(value: &self.useCamera)
      case 4: try decoder.decodeSingularMessageField(value: &self._android)
      case 5: try decoder.decodeSingularBoolField(value: &self.autoEnableFlash)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.strings.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.strings, fieldNumber: 1)
    }
    if !self.restrictFormat.isEmpty {
      try visitor.visitPackedEnumField(value: self.restrictFormat, fieldNumber: 2)
    }
    if self.useCamera != 0 {
      try visitor.visitSingularInt32Field(value: self.useCamera, fieldNumber: 3)
    }
    if let v = self._android {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if self.autoEnableFlash != false {
      try visitor.visitSingularBoolField(value: self.autoEnableFlash, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Configuration, rhs: Configuration) -> Bool {
    if lhs.strings != rhs.strings {return false}
    if lhs.restrictFormat != rhs.restrictFormat {return false}
    if lhs.useCamera != rhs.useCamera {return false}
    if lhs._android != rhs._android {return false}
    if lhs.autoEnableFlash != rhs.autoEnableFlash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ScanResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ScanResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "rawContent"),
    3: .same(proto: "format"),
    4: .same(proto: "rawBytes"),
    5: .same(proto: "formatNote"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.type)
      case 2: try decoder.decodeSingularStringField(value: &self.rawContent)
      case 3: try decoder.decodeSingularEnumField(value: &self.format)
      case 4: try decoder.decodeSingularStringField(value: &self.rawBytes)
      case 5: try decoder.decodeSingularStringField(value: &self.formatNote)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .barcode {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.rawContent.isEmpty {
      try visitor.visitSingularStringField(value: self.rawContent, fieldNumber: 2)
    }
    if self.format != .unknown {
      try visitor.visitSingularEnumField(value: self.format, fieldNumber: 3)
    }
    if !self.rawBytes.isEmpty {
      try visitor.visitSingularStringField(value: self.rawBytes, fieldNumber: 4)
    }
    if !self.formatNote.isEmpty {
      try visitor.visitSingularStringField(value: self.formatNote, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ScanResult, rhs: ScanResult) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.rawContent != rhs.rawContent {return false}
    if lhs.format != rhs.format {return false}
    if lhs.rawBytes != rhs.rawBytes {return false}
    if lhs.formatNote != rhs.formatNote {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
