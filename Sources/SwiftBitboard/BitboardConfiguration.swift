import Foundation

public protocol BitboardConfiguration {
  
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  
  static var fileWidth: Int { get }
  static var rankWidth: Int { get }
}
