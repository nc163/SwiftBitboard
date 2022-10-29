public protocol Bitboardable: Equatable, CustomDebugStringConvertible, LosslessStringConvertible {
    
    // e.g. UInt8, UInt16, UInt32, UInt64, UInt128, etc
    typealias RawValue = FixedWidthInteger & UnsignedInteger
    
    var fileWidth: Int8 { get }
    var rankWidth: Int8 { get }
    var raw: RawValue { get }
}
