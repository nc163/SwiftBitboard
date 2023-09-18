import SwiftBitboard

protocol BitboardUInt8Configuration: BitboardConfiguration where RawValue == UInt8 { }
protocol BitboardUInt16Configuration: BitboardConfiguration where RawValue == UInt16 { }
protocol BitboardUInt32Configuration: BitboardConfiguration where RawValue == UInt32 { }
protocol BitboardUInt64Configuration: BitboardConfiguration where RawValue == UInt64 { }
protocol BitboardUInt128Configuration: BitboardConfiguration where RawValue == UInt128 { }


class Bitboard2x2Configuration: BitboardUInt8Configuration {
  static var fileWidth: Int { 2 }
  static var rankWidth: Int { 2 }
}
class Bitboard2x3Configuration: BitboardUInt8Configuration {
  static var fileWidth: Int { 2 }
  static var rankWidth: Int { 3 }
}
class Bitboard2x4Configuration: BitboardUInt8Configuration {
  static var fileWidth: Int { 2 }
  static var rankWidth: Int { 4 }
}
class Bitboard2x8Configuration: BitboardUInt16Configuration {
  static var fileWidth: Int { 2 }
  static var rankWidth: Int { 8 }
}
class Bitboard3x3Configuration: BitboardUInt16Configuration {
  static var fileWidth: Int { 3 }
  static var rankWidth: Int { 3 }
}
class Bitboard3x4Configuration: BitboardUInt16Configuration {
  static var fileWidth: Int { 3 }
  static var rankWidth: Int { 4 }
}
class Bitboard3x5Configuration: BitboardUInt16Configuration {
  static var fileWidth: Int { 3 }
  static var rankWidth: Int { 5 }
}
class Bitboard4x4Configuration: BitboardUInt16Configuration {
  static var fileWidth: Int { 4 }
  static var rankWidth: Int { 4 }
}
class Bitboard4x6Configuration: BitboardUInt32Configuration {
  static var fileWidth: Int { 4 }
  static var rankWidth: Int { 6 }
}
class Bitboard4x7Configuration: BitboardUInt32Configuration {
  static var fileWidth: Int { 4 }
  static var rankWidth: Int { 7 }
}
class Bitboard4x8Configuration: BitboardUInt32Configuration {
  static var fileWidth: Int { 4 }
  static var rankWidth: Int { 8 }
}
class Bitboard5x5Configuration: BitboardUInt32Configuration {
  static var fileWidth: Int { 5 }
  static var rankWidth: Int { 5 }
}
class Bitboard5x6Configuration: BitboardUInt32Configuration {
  static var fileWidth: Int { 5 }
  static var rankWidth: Int { 6 }
}
class Bitboard6x10Configuration: BitboardUInt64Configuration {
  static var fileWidth: Int { 6 }
  static var rankWidth: Int { 10 }
}
class Bitboard7x7Configuration: BitboardUInt64Configuration {
  static var fileWidth: Int { 7 }
  static var rankWidth: Int { 7 }
}
class Bitboard7x8Configuration: BitboardUInt64Configuration {
  static var fileWidth: Int { 7 }
  static var rankWidth: Int { 8 }
}
class Bitboard7x9Configuration: BitboardUInt64Configuration {
  static var fileWidth: Int { 7 }
  static var rankWidth: Int { 9 }
}
class Bitboard8x8Configuration: BitboardUInt64Configuration {
  static var fileWidth: Int { 8 }
  static var rankWidth: Int { 8 }
}
class Bitboard9x14Configuration: BitboardUInt128Configuration {
  static var fileWidth: Int { 9 }
  static var rankWidth: Int { 14 }
}
class Bitboard10x10Configuration: BitboardUInt128Configuration {
  static var fileWidth: Int { 10 }
  static var rankWidth: Int { 10 }
}
class Bitboard10x11Configuration: BitboardUInt128Configuration {
  static var fileWidth: Int { 10 }
  static var rankWidth: Int { 11 }
}
class Bitboard10x12Configuration: BitboardUInt128Configuration {
  static var fileWidth: Int { 10 }
  static var rankWidth: Int { 12 }
}
class Bitboard11x11Configuration: BitboardUInt128Configuration {
  static var fileWidth: Int { 11 }
  static var rankWidth: Int { 11 }
}


typealias Bitboard2x2 = Bitboard<Bitboard2x2Configuration>
typealias Bitboard2x3 = Bitboard<Bitboard2x3Configuration>
typealias Bitboard2x4 = Bitboard<Bitboard2x4Configuration>
typealias Bitboard2x8 = Bitboard<Bitboard2x8Configuration>
typealias Bitboard3x3 = Bitboard<Bitboard3x3Configuration>
typealias Bitboard3x4 = Bitboard<Bitboard3x4Configuration>
typealias Bitboard3x5 = Bitboard<Bitboard3x5Configuration>
typealias Bitboard4x4 = Bitboard<Bitboard4x4Configuration>
typealias Bitboard4x6 = Bitboard<Bitboard4x6Configuration>
typealias Bitboard4x7 = Bitboard<Bitboard4x7Configuration>
typealias Bitboard4x8 = Bitboard<Bitboard4x8Configuration>
typealias Bitboard5x5 = Bitboard<Bitboard5x5Configuration>
typealias Bitboard5x6 = Bitboard<Bitboard5x6Configuration>
typealias Bitboard6x10 = Bitboard<Bitboard6x10Configuration>
typealias Bitboard7x7 = Bitboard<Bitboard7x7Configuration>
typealias Bitboard7x8 = Bitboard<Bitboard7x8Configuration>
typealias Bitboard7x9 = Bitboard<Bitboard7x9Configuration>
typealias Bitboard8x8 = Bitboard<Bitboard8x8Configuration>
typealias Bitboard9x14 = Bitboard<Bitboard9x14Configuration>
typealias Bitboard10x10 = Bitboard<Bitboard10x10Configuration>
typealias Bitboard10x11 = Bitboard<Bitboard10x11Configuration>
typealias Bitboard10x12 = Bitboard<Bitboard10x12Configuration>
typealias Bitboard11x11 = Bitboard<Bitboard11x11Configuration>



func EmptyBitboards() -> Array<any Bitboardable> {
  var retval: Array<any Bitboardable> = []
  retval.append(Bitboard2x2.init(rawValue: .zero))
  retval.append(Bitboard2x3.init(rawValue: .zero))
  retval.append(Bitboard2x4.init(rawValue: .zero))
  retval.append(Bitboard2x8.init(rawValue: .zero))
  retval.append(Bitboard3x3.init(rawValue: .zero))
  retval.append(Bitboard3x4.init(rawValue: .zero))
  retval.append(Bitboard3x5.init(rawValue: .zero))
  retval.append(Bitboard4x4.init(rawValue: .zero))
  retval.append(Bitboard4x6.init(rawValue: .zero))
  retval.append(Bitboard4x7.init(rawValue: .zero))
  retval.append(Bitboard4x8.init(rawValue: .zero))
  retval.append(Bitboard5x5.init(rawValue: .zero))
  retval.append(Bitboard5x6.init(rawValue: .zero))
  retval.append(Bitboard6x10.init(rawValue: .zero))
  retval.append(Bitboard7x7.init(rawValue: .zero))
  retval.append(Bitboard7x8.init(rawValue: .zero))
  retval.append(Bitboard7x9.init(rawValue: .zero))
  retval.append(Bitboard8x8.init(rawValue: .zero))
  retval.append(Bitboard9x14.init(rawValue: .zero))
  retval.append(Bitboard10x10.init(rawValue: .zero))
  retval.append(Bitboard10x11.init(rawValue: .zero))
  retval.append(Bitboard10x12.init(rawValue: .zero))
  retval.append(Bitboard11x11.init(rawValue: .zero))
  return retval
}

func MaxBitboards() -> Array<any Bitboardable> {
  var retval: Array<any Bitboardable> = []
  retval.append(Bitboard2x2.init(rawValue: .max))
  retval.append(Bitboard2x3.init(rawValue: .max))
  retval.append(Bitboard2x4.init(rawValue: .max))
  retval.append(Bitboard2x8.init(rawValue: .max))
  retval.append(Bitboard3x3.init(rawValue: .max))
  retval.append(Bitboard3x4.init(rawValue: .max))
  retval.append(Bitboard3x5.init(rawValue: .max))
  retval.append(Bitboard4x4.init(rawValue: .max))
  retval.append(Bitboard4x6.init(rawValue: .max))
  retval.append(Bitboard4x7.init(rawValue: .max))
  retval.append(Bitboard4x8.init(rawValue: .max))
  retval.append(Bitboard5x5.init(rawValue: .max))
  retval.append(Bitboard5x6.init(rawValue: .max))
  retval.append(Bitboard6x10.init(rawValue: .max))
  retval.append(Bitboard7x7.init(rawValue: .max))
  retval.append(Bitboard7x8.init(rawValue: .max))
  retval.append(Bitboard7x9.init(rawValue: .max))
  retval.append(Bitboard8x8.init(rawValue: .max))
  retval.append(Bitboard9x14.init(rawValue: .max))
  retval.append(Bitboard10x10.init(rawValue: .max))
  retval.append(Bitboard10x11.init(rawValue: .max))
  retval.append(Bitboard10x12.init(rawValue: .max))
  retval.append(Bitboard11x11.init(rawValue: .max))
  return retval
}
