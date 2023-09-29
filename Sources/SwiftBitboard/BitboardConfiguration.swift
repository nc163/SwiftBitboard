import Foundation

/// Bitboardに関する設定
public protocol BitboardConfiguration {
  
  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  
  /// 列（横）の数
  static var fileWidth: Int { get }
  
  /// 行（縦）の数
  static var rankWidth: Int { get }
  
  
  //
  // options
  //
  
  
  // file rank が 0 始まりかどうか
//  static var isZeroBasedIndexing: Bool { get }
}

// Default
extension BitboardConfiguration {
  public static var isZeroBasedIndexing: Bool { false }
}


extension BitboardConfiguration {
  
  static var based_index: Int { isZeroBasedIndexing ? 0 : 1 }
  
}
