import Foundation

/// Bitboardに関する設定
public protocol BitboardConfiguration {
  
  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  
  /// 列（横）の数
  static var xMax: Int { get }
  
  /// 行（縦）の数
  static var yMax: Int { get }
  
}
