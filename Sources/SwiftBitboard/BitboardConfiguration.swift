import Foundation

/// Bitboardに関する設定
public protocol BitboardConfiguration {
  
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  
  /// 列（横）の数
  static var fileWidth: Int { get }
  
  /// 行（縦）の数
  static var rankWidth: Int { get }
}
