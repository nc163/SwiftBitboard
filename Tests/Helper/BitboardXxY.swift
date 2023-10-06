@testable import SwiftBitboard

public protocol BitboardUInt8Configuration: BitboardConfiguration where RawValue == UInt8 { }
public protocol BitboardUInt16Configuration: BitboardConfiguration where RawValue == UInt16 { }
public protocol BitboardUInt32Configuration: BitboardConfiguration where RawValue == UInt32 { }
public protocol BitboardUInt64Configuration: BitboardConfiguration where RawValue == UInt64 { }
public protocol BitboardUInt128Configuration: BitboardConfiguration where RawValue == UInt128 { }

// MARK: BitboardUInt8Configuration
public class Bitboard2x2Configuration: BitboardUInt8Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 2 }
}
public class Bitboard2x3Configuration: BitboardUInt8Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 3 }
}
public class Bitboard3x2Configuration: BitboardUInt8Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 2 }
}

// MARK: BitboardUInt16Configuration
public class Bitboard2x4Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 4 }
}
public class Bitboard2x5Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 5 }
}
public class Bitboard2x6Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 6 }
}
public class Bitboard2x7Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 7 }
}
public class Bitboard3x3Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 3 }
}
public class Bitboard3x4Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 4 }
}
public class Bitboard3x5Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 5 }
}
public class Bitboard4x2Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 2 }
}
public class Bitboard4x3Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 3 }
}
public class Bitboard5x2Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 2 }
}
public class Bitboard5x3Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 3 }
}
public class Bitboard6x2Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 2 }
}
public class Bitboard7x2Configuration: BitboardUInt16Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 2 }
}

// MARK: BitboardUInt32Configuration
public class Bitboard2x8Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 8 }
}
public class Bitboard2x9Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 9 }
}
public class Bitboard2x10Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 10 }
}
public class Bitboard2x11Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 11 }
}
public class Bitboard2x12Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 12 }
}
public class Bitboard2x13Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 13 }
}
public class Bitboard2x14Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 14 }
}
public class Bitboard2x15Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 15 }
}
public class Bitboard3x6Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 6 }
}
public class Bitboard3x7Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 7 }
}
public class Bitboard3x8Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 8 }
}
public class Bitboard3x9Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 9 }
}
public class Bitboard3x10Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 10 }
}
public class Bitboard4x4Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 4 }
}
public class Bitboard4x5Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 5 }
}
public class Bitboard4x6Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 6 }
}
public class Bitboard4x7Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 7 }
}
public class Bitboard5x4Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 4 }
}
public class Bitboard5x5Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 5 }
}
public class Bitboard5x6Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 6 }
}
public class Bitboard6x3Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 3 }
}
public class Bitboard6x4Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 4 }
}
public class Bitboard6x5Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 5 }
}
public class Bitboard7x3Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 3 }
}
public class Bitboard7x4Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 4 }
}
public class Bitboard8x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 2 }
}
public class Bitboard8x3Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 3 }
}
public class Bitboard9x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 2 }
}
public class Bitboard9x3Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 3 }
}
public class Bitboard10x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 2 }
}
public class Bitboard10x3Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 3 }
}
public class Bitboard11x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 2 }
}
public class Bitboard12x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 2 }
}
public class Bitboard13x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 2 }
}
public class Bitboard14x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 2 }
}
public class Bitboard15x2Configuration: BitboardUInt32Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 2 }
}

// MARK: BitboardUInt64Configuration
public class Bitboard2x16Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 16 }
}
public class Bitboard2x17Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 17 }
}
public class Bitboard2x18Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 18 }
}
public class Bitboard2x19Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 19 }
}
public class Bitboard2x20Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 20 }
}
public class Bitboard2x21Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 21 }
}
public class Bitboard2x22Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 22 }
}
public class Bitboard2x23Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 23 }
}
public class Bitboard2x24Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 24 }
}
public class Bitboard2x25Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 25 }
}
public class Bitboard2x26Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 26 }
}
public class Bitboard2x27Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 27 }
}
public class Bitboard2x28Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 28 }
}
public class Bitboard2x29Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 29 }
}
public class Bitboard2x30Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 30 }
}
public class Bitboard2x31Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 31 }
}
public class Bitboard3x11Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 11 }
}
public class Bitboard3x12Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 12 }
}
public class Bitboard3x13Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 13 }
}
public class Bitboard3x14Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 14 }
}
public class Bitboard3x15Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 15 }
}
public class Bitboard3x16Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 16 }
}
public class Bitboard3x17Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 17 }
}
public class Bitboard3x18Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 18 }
}
public class Bitboard3x19Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 19 }
}
public class Bitboard3x20Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 20 }
}
public class Bitboard3x21Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 21 }
}
public class Bitboard4x8Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 8 }
}
public class Bitboard4x9Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 9 }
}
public class Bitboard4x10Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 10 }
}
public class Bitboard4x11Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 11 }
}
public class Bitboard4x12Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 12 }
}
public class Bitboard4x13Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 13 }
}
public class Bitboard4x14Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 14 }
}
public class Bitboard4x15Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 15 }
}
public class Bitboard5x7Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 7 }
}
public class Bitboard5x8Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 8 }
}
public class Bitboard5x9Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 9 }
}
public class Bitboard5x10Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 10 }
}
public class Bitboard5x11Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 11 }
}
public class Bitboard5x12Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 12 }
}
public class Bitboard6x6Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 6 }
}
public class Bitboard6x7Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 7 }
}
public class Bitboard6x8Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 8 }
}
public class Bitboard6x9Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 9 }
}
public class Bitboard6x10Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 10 }
}
public class Bitboard7x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 5 }
}
public class Bitboard7x6Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 6 }
}
public class Bitboard7x7Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 7 }
}
public class Bitboard7x8Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 8 }
}
public class Bitboard7x9Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 9 }
}
public class Bitboard8x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 4 }
}
public class Bitboard8x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 5 }
}
public class Bitboard8x6Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 6 }
}
public class Bitboard8x7Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 7 }
}
public class Bitboard9x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 4 }
}
public class Bitboard9x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 5 }
}
public class Bitboard9x6Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 6 }
}
public class Bitboard9x7Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 7 }
}
public class Bitboard10x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 4 }
}
public class Bitboard10x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 5 }
}
public class Bitboard10x6Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 6 }
}
public class Bitboard11x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 3 }
}
public class Bitboard11x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 4 }
}
public class Bitboard11x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 5 }
}
public class Bitboard12x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 3 }
}
public class Bitboard12x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 4 }
}
public class Bitboard12x5Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 5 }
}
public class Bitboard13x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 3 }
}
public class Bitboard13x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 4 }
}
public class Bitboard14x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 3 }
}
public class Bitboard14x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 4 }
}
public class Bitboard15x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 3 }
}
public class Bitboard15x4Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 4 }
}
public class Bitboard16x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 2 }
}
public class Bitboard16x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 3 }
}
public class Bitboard17x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 2 }
}
public class Bitboard17x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 3 }
}
public class Bitboard18x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 2 }
}
public class Bitboard18x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 3 }
}
public class Bitboard19x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 19 }
  public static var yMax: Int { 2 }
}
public class Bitboard19x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 19 }
  public static var yMax: Int { 3 }
}
public class Bitboard20x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 20 }
  public static var yMax: Int { 2 }
}
public class Bitboard20x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 20 }
  public static var yMax: Int { 3 }
}
public class Bitboard21x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 21 }
  public static var yMax: Int { 2 }
}
public class Bitboard21x3Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 21 }
  public static var yMax: Int { 3 }
}
public class Bitboard22x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 22 }
  public static var yMax: Int { 2 }
}
public class Bitboard23x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 23 }
  public static var yMax: Int { 2 }
}
public class Bitboard24x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 24 }
  public static var yMax: Int { 2 }
}
public class Bitboard25x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 25 }
  public static var yMax: Int { 2 }
}
public class Bitboard26x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 26 }
  public static var yMax: Int { 2 }
}
public class Bitboard27x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 27 }
  public static var yMax: Int { 2 }
}
public class Bitboard28x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 28 }
  public static var yMax: Int { 2 }
}
public class Bitboard29x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 29 }
  public static var yMax: Int { 2 }
}
public class Bitboard30x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 30 }
  public static var yMax: Int { 2 }
}
public class Bitboard31x2Configuration: BitboardUInt64Configuration {
  public static var xMax: Int { 31 }
  public static var yMax: Int { 2 }
}

// MARK: BitboardUInt128Configuration
public class Bitboard2x32Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 32 }
}
public class Bitboard2x33Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 33 }
}
public class Bitboard2x34Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 34 }
}
public class Bitboard2x35Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 35 }
}
public class Bitboard2x36Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 36 }
}
public class Bitboard2x37Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 37 }
}
public class Bitboard2x38Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 38 }
}
public class Bitboard2x39Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 39 }
}
public class Bitboard2x40Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 40 }
}
public class Bitboard2x41Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 41 }
}
public class Bitboard2x42Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 42 }
}
public class Bitboard2x43Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 43 }
}
public class Bitboard2x44Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 44 }
}
public class Bitboard2x45Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 45 }
}
public class Bitboard2x46Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 46 }
}
public class Bitboard2x47Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 47 }
}
public class Bitboard2x48Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 48 }
}
public class Bitboard2x49Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 49 }
}
public class Bitboard2x50Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 50 }
}
public class Bitboard2x51Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 51 }
}
public class Bitboard2x52Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 52 }
}
public class Bitboard2x53Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 53 }
}
public class Bitboard2x54Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 54 }
}
public class Bitboard2x55Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 55 }
}
public class Bitboard2x56Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 56 }
}
public class Bitboard2x57Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 57 }
}
public class Bitboard2x58Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 58 }
}
public class Bitboard2x59Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 59 }
}
public class Bitboard2x60Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 60 }
}
public class Bitboard2x61Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 61 }
}
public class Bitboard2x62Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 62 }
}
public class Bitboard2x63Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 2 }
  public static var yMax: Int { 63 }
}
public class Bitboard3x22Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 22 }
}
public class Bitboard3x23Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 23 }
}
public class Bitboard3x24Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 24 }
}
public class Bitboard3x25Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 25 }
}
public class Bitboard3x26Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 26 }
}
public class Bitboard3x27Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 27 }
}
public class Bitboard3x28Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 28 }
}
public class Bitboard3x29Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 29 }
}
public class Bitboard3x30Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 30 }
}
public class Bitboard3x31Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 31 }
}
public class Bitboard3x32Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 32 }
}
public class Bitboard3x33Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 33 }
}
public class Bitboard3x34Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 34 }
}
public class Bitboard3x35Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 35 }
}
public class Bitboard3x36Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 36 }
}
public class Bitboard3x37Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 37 }
}
public class Bitboard3x38Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 38 }
}
public class Bitboard3x39Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 39 }
}
public class Bitboard3x40Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 40 }
}
public class Bitboard3x41Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 41 }
}
public class Bitboard3x42Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 3 }
  public static var yMax: Int { 42 }
}
public class Bitboard4x16Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 16 }
}
public class Bitboard4x17Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 17 }
}
public class Bitboard4x18Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 18 }
}
public class Bitboard4x19Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 19 }
}
public class Bitboard4x20Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 20 }
}
public class Bitboard4x21Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 21 }
}
public class Bitboard4x22Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 22 }
}
public class Bitboard4x23Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 23 }
}
public class Bitboard4x24Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 24 }
}
public class Bitboard4x25Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 25 }
}
public class Bitboard4x26Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 26 }
}
public class Bitboard4x27Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 27 }
}
public class Bitboard4x28Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 28 }
}
public class Bitboard4x29Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 29 }
}
public class Bitboard4x30Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 30 }
}
public class Bitboard4x31Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 4 }
  public static var yMax: Int { 31 }
}
public class Bitboard5x13Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 13 }
}
public class Bitboard5x14Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 14 }
}
public class Bitboard5x15Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 15 }
}
public class Bitboard5x16Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 16 }
}
public class Bitboard5x17Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 17 }
}
public class Bitboard5x18Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 18 }
}
public class Bitboard5x19Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 19 }
}
public class Bitboard5x20Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 20 }
}
public class Bitboard5x21Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 21 }
}
public class Bitboard5x22Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 22 }
}
public class Bitboard5x23Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 23 }
}
public class Bitboard5x24Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 24 }
}
public class Bitboard5x25Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 5 }
  public static var yMax: Int { 25 }
}
public class Bitboard6x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 11 }
}
public class Bitboard6x12Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 12 }
}
public class Bitboard6x13Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 13 }
}
public class Bitboard6x14Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 14 }
}
public class Bitboard6x15Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 15 }
}
public class Bitboard6x16Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 16 }
}
public class Bitboard6x17Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 17 }
}
public class Bitboard6x18Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 18 }
}
public class Bitboard6x19Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 19 }
}
public class Bitboard6x20Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 20 }
}
public class Bitboard6x21Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 6 }
  public static var yMax: Int { 21 }
}
public class Bitboard7x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 10 }
}
public class Bitboard7x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 11 }
}
public class Bitboard7x12Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 12 }
}
public class Bitboard7x13Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 13 }
}
public class Bitboard7x14Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 14 }
}
public class Bitboard7x15Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 15 }
}
public class Bitboard7x16Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 16 }
}
public class Bitboard7x17Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 17 }
}
public class Bitboard7x18Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 7 }
  public static var yMax: Int { 18 }
}
public class Bitboard8x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 8 }
}
public class Bitboard8x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 9 }
}
public class Bitboard8x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 10 }
}
public class Bitboard8x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 11 }
}
public class Bitboard8x12Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 12 }
}
public class Bitboard8x13Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 13 }
}
public class Bitboard8x14Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 14 }
}
public class Bitboard8x15Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 8 }
  public static var yMax: Int { 15 }
}
public class Bitboard9x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 8 }
}
public class Bitboard9x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 9 }
}
public class Bitboard9x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 10 }
}
public class Bitboard9x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 11 }
}
public class Bitboard9x12Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 12 }
}
public class Bitboard9x13Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 13 }
}
public class Bitboard9x14Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 9 }
  public static var yMax: Int { 14 }
}
public class Bitboard10x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 7 }
}
public class Bitboard10x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 8 }
}
public class Bitboard10x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 9 }
}
public class Bitboard10x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 10 }
}
public class Bitboard10x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 11 }
}
public class Bitboard10x12Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 10 }
  public static var yMax: Int { 12 }
}
public class Bitboard11x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 6 }
}
public class Bitboard11x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 7 }
}
public class Bitboard11x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 8 }
}
public class Bitboard11x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 9 }
}
public class Bitboard11x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 10 }
}
public class Bitboard11x11Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 11 }
  public static var yMax: Int { 11 }
}
public class Bitboard12x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 6 }
}
public class Bitboard12x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 7 }
}
public class Bitboard12x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 8 }
}
public class Bitboard12x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 9 }
}
public class Bitboard12x10Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 12 }
  public static var yMax: Int { 10 }
}
public class Bitboard13x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 5 }
}
public class Bitboard13x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 6 }
}
public class Bitboard13x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 7 }
}
public class Bitboard13x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 8 }
}
public class Bitboard13x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 13 }
  public static var yMax: Int { 9 }
}
public class Bitboard14x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 5 }
}
public class Bitboard14x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 6 }
}
public class Bitboard14x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 7 }
}
public class Bitboard14x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 8 }
}
public class Bitboard14x9Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 14 }
  public static var yMax: Int { 9 }
}
public class Bitboard15x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 5 }
}
public class Bitboard15x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 6 }
}
public class Bitboard15x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 7 }
}
public class Bitboard15x8Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 15 }
  public static var yMax: Int { 8 }
}
public class Bitboard16x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 4 }
}
public class Bitboard16x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 5 }
}
public class Bitboard16x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 6 }
}
public class Bitboard16x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 16 }
  public static var yMax: Int { 7 }
}
public class Bitboard17x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 4 }
}
public class Bitboard17x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 5 }
}
public class Bitboard17x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 6 }
}
public class Bitboard17x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 17 }
  public static var yMax: Int { 7 }
}
public class Bitboard18x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 4 }
}
public class Bitboard18x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 5 }
}
public class Bitboard18x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 6 }
}
public class Bitboard18x7Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 18 }
  public static var yMax: Int { 7 }
}
public class Bitboard19x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 19 }
  public static var yMax: Int { 4 }
}
public class Bitboard19x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 19 }
  public static var yMax: Int { 5 }
}
public class Bitboard19x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 19 }
  public static var yMax: Int { 6 }
}
public class Bitboard20x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 20 }
  public static var yMax: Int { 4 }
}
public class Bitboard20x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 20 }
  public static var yMax: Int { 5 }
}
public class Bitboard20x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 20 }
  public static var yMax: Int { 6 }
}
public class Bitboard21x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 21 }
  public static var yMax: Int { 4 }
}
public class Bitboard21x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 21 }
  public static var yMax: Int { 5 }
}
public class Bitboard21x6Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 21 }
  public static var yMax: Int { 6 }
}
public class Bitboard22x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 22 }
  public static var yMax: Int { 3 }
}
public class Bitboard22x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 22 }
  public static var yMax: Int { 4 }
}
public class Bitboard22x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 22 }
  public static var yMax: Int { 5 }
}
public class Bitboard23x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 23 }
  public static var yMax: Int { 3 }
}
public class Bitboard23x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 23 }
  public static var yMax: Int { 4 }
}
public class Bitboard23x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 23 }
  public static var yMax: Int { 5 }
}
public class Bitboard24x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 24 }
  public static var yMax: Int { 3 }
}
public class Bitboard24x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 24 }
  public static var yMax: Int { 4 }
}
public class Bitboard24x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 24 }
  public static var yMax: Int { 5 }
}
public class Bitboard25x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 25 }
  public static var yMax: Int { 3 }
}
public class Bitboard25x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 25 }
  public static var yMax: Int { 4 }
}
public class Bitboard25x5Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 25 }
  public static var yMax: Int { 5 }
}
public class Bitboard26x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 26 }
  public static var yMax: Int { 3 }
}
public class Bitboard26x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 26 }
  public static var yMax: Int { 4 }
}
public class Bitboard27x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 27 }
  public static var yMax: Int { 3 }
}
public class Bitboard27x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 27 }
  public static var yMax: Int { 4 }
}
public class Bitboard28x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 28 }
  public static var yMax: Int { 3 }
}
public class Bitboard28x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 28 }
  public static var yMax: Int { 4 }
}
public class Bitboard29x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 29 }
  public static var yMax: Int { 3 }
}
public class Bitboard29x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 29 }
  public static var yMax: Int { 4 }
}
public class Bitboard30x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 30 }
  public static var yMax: Int { 3 }
}
public class Bitboard30x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 30 }
  public static var yMax: Int { 4 }
}
public class Bitboard31x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 31 }
  public static var yMax: Int { 3 }
}
public class Bitboard31x4Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 31 }
  public static var yMax: Int { 4 }
}
public class Bitboard32x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 32 }
  public static var yMax: Int { 2 }
}
public class Bitboard32x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 32 }
  public static var yMax: Int { 3 }
}
public class Bitboard33x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 33 }
  public static var yMax: Int { 2 }
}
public class Bitboard33x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 33 }
  public static var yMax: Int { 3 }
}
public class Bitboard34x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 34 }
  public static var yMax: Int { 2 }
}
public class Bitboard34x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 34 }
  public static var yMax: Int { 3 }
}
public class Bitboard35x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 35 }
  public static var yMax: Int { 2 }
}
public class Bitboard35x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 35 }
  public static var yMax: Int { 3 }
}
public class Bitboard36x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 36 }
  public static var yMax: Int { 2 }
}
public class Bitboard36x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 36 }
  public static var yMax: Int { 3 }
}
public class Bitboard37x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 37 }
  public static var yMax: Int { 2 }
}
public class Bitboard37x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 37 }
  public static var yMax: Int { 3 }
}
public class Bitboard38x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 38 }
  public static var yMax: Int { 2 }
}
public class Bitboard38x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 38 }
  public static var yMax: Int { 3 }
}
public class Bitboard39x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 39 }
  public static var yMax: Int { 2 }
}
public class Bitboard39x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 39 }
  public static var yMax: Int { 3 }
}
public class Bitboard40x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 40 }
  public static var yMax: Int { 2 }
}
public class Bitboard40x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 40 }
  public static var yMax: Int { 3 }
}
public class Bitboard41x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 41 }
  public static var yMax: Int { 2 }
}
public class Bitboard41x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 41 }
  public static var yMax: Int { 3 }
}
public class Bitboard42x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 42 }
  public static var yMax: Int { 2 }
}
public class Bitboard42x3Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 42 }
  public static var yMax: Int { 3 }
}
public class Bitboard43x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 43 }
  public static var yMax: Int { 2 }
}
public class Bitboard44x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 44 }
  public static var yMax: Int { 2 }
}
public class Bitboard45x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 45 }
  public static var yMax: Int { 2 }
}
public class Bitboard46x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 46 }
  public static var yMax: Int { 2 }
}
public class Bitboard47x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 47 }
  public static var yMax: Int { 2 }
}
public class Bitboard48x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 48 }
  public static var yMax: Int { 2 }
}
public class Bitboard49x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 49 }
  public static var yMax: Int { 2 }
}
public class Bitboard50x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 50 }
  public static var yMax: Int { 2 }
}
public class Bitboard51x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 51 }
  public static var yMax: Int { 2 }
}
public class Bitboard52x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 52 }
  public static var yMax: Int { 2 }
}
public class Bitboard53x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 53 }
  public static var yMax: Int { 2 }
}
public class Bitboard54x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 54 }
  public static var yMax: Int { 2 }
}
public class Bitboard55x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 55 }
  public static var yMax: Int { 2 }
}
public class Bitboard56x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 56 }
  public static var yMax: Int { 2 }
}
public class Bitboard57x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 57 }
  public static var yMax: Int { 2 }
}
public class Bitboard58x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 58 }
  public static var yMax: Int { 2 }
}
public class Bitboard59x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 59 }
  public static var yMax: Int { 2 }
}
public class Bitboard60x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 60 }
  public static var yMax: Int { 2 }
}
public class Bitboard61x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 61 }
  public static var yMax: Int { 2 }
}
public class Bitboard62x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 62 }
  public static var yMax: Int { 2 }
}
public class Bitboard63x2Configuration: BitboardUInt128Configuration {
  public static var xMax: Int { 63 }
  public static var yMax: Int { 2 }
}

// MARK: typealias BitboardNxM = Bitboard<BitboardNxMConfiguration>
public typealias Bitboard2x2 = Bitboard<Bitboard2x2Configuration>
public typealias Bitboard2x3 = Bitboard<Bitboard2x3Configuration>
public typealias Bitboard3x2 = Bitboard<Bitboard3x2Configuration>
public typealias Bitboard2x4 = Bitboard<Bitboard2x4Configuration>
public typealias Bitboard2x5 = Bitboard<Bitboard2x5Configuration>
public typealias Bitboard2x6 = Bitboard<Bitboard2x6Configuration>
public typealias Bitboard2x7 = Bitboard<Bitboard2x7Configuration>
public typealias Bitboard3x3 = Bitboard<Bitboard3x3Configuration>
public typealias Bitboard3x4 = Bitboard<Bitboard3x4Configuration>
public typealias Bitboard3x5 = Bitboard<Bitboard3x5Configuration>
public typealias Bitboard4x2 = Bitboard<Bitboard4x2Configuration>
public typealias Bitboard4x3 = Bitboard<Bitboard4x3Configuration>
public typealias Bitboard5x2 = Bitboard<Bitboard5x2Configuration>
public typealias Bitboard5x3 = Bitboard<Bitboard5x3Configuration>
public typealias Bitboard6x2 = Bitboard<Bitboard6x2Configuration>
public typealias Bitboard7x2 = Bitboard<Bitboard7x2Configuration>
public typealias Bitboard2x8 = Bitboard<Bitboard2x8Configuration>
public typealias Bitboard2x9 = Bitboard<Bitboard2x9Configuration>
public typealias Bitboard2x10 = Bitboard<Bitboard2x10Configuration>
public typealias Bitboard2x11 = Bitboard<Bitboard2x11Configuration>
public typealias Bitboard2x12 = Bitboard<Bitboard2x12Configuration>
public typealias Bitboard2x13 = Bitboard<Bitboard2x13Configuration>
public typealias Bitboard2x14 = Bitboard<Bitboard2x14Configuration>
public typealias Bitboard2x15 = Bitboard<Bitboard2x15Configuration>
public typealias Bitboard3x6 = Bitboard<Bitboard3x6Configuration>
public typealias Bitboard3x7 = Bitboard<Bitboard3x7Configuration>
public typealias Bitboard3x8 = Bitboard<Bitboard3x8Configuration>
public typealias Bitboard3x9 = Bitboard<Bitboard3x9Configuration>
public typealias Bitboard3x10 = Bitboard<Bitboard3x10Configuration>
public typealias Bitboard4x4 = Bitboard<Bitboard4x4Configuration>
public typealias Bitboard4x5 = Bitboard<Bitboard4x5Configuration>
public typealias Bitboard4x6 = Bitboard<Bitboard4x6Configuration>
public typealias Bitboard4x7 = Bitboard<Bitboard4x7Configuration>
public typealias Bitboard5x4 = Bitboard<Bitboard5x4Configuration>
public typealias Bitboard5x5 = Bitboard<Bitboard5x5Configuration>
public typealias Bitboard5x6 = Bitboard<Bitboard5x6Configuration>
public typealias Bitboard6x3 = Bitboard<Bitboard6x3Configuration>
public typealias Bitboard6x4 = Bitboard<Bitboard6x4Configuration>
public typealias Bitboard6x5 = Bitboard<Bitboard6x5Configuration>
public typealias Bitboard7x3 = Bitboard<Bitboard7x3Configuration>
public typealias Bitboard7x4 = Bitboard<Bitboard7x4Configuration>
public typealias Bitboard8x2 = Bitboard<Bitboard8x2Configuration>
public typealias Bitboard8x3 = Bitboard<Bitboard8x3Configuration>
public typealias Bitboard9x2 = Bitboard<Bitboard9x2Configuration>
public typealias Bitboard9x3 = Bitboard<Bitboard9x3Configuration>
public typealias Bitboard10x2 = Bitboard<Bitboard10x2Configuration>
public typealias Bitboard10x3 = Bitboard<Bitboard10x3Configuration>
public typealias Bitboard11x2 = Bitboard<Bitboard11x2Configuration>
public typealias Bitboard12x2 = Bitboard<Bitboard12x2Configuration>
public typealias Bitboard13x2 = Bitboard<Bitboard13x2Configuration>
public typealias Bitboard14x2 = Bitboard<Bitboard14x2Configuration>
public typealias Bitboard15x2 = Bitboard<Bitboard15x2Configuration>
public typealias Bitboard2x16 = Bitboard<Bitboard2x16Configuration>
public typealias Bitboard2x17 = Bitboard<Bitboard2x17Configuration>
public typealias Bitboard2x18 = Bitboard<Bitboard2x18Configuration>
public typealias Bitboard2x19 = Bitboard<Bitboard2x19Configuration>
public typealias Bitboard2x20 = Bitboard<Bitboard2x20Configuration>
public typealias Bitboard2x21 = Bitboard<Bitboard2x21Configuration>
public typealias Bitboard2x22 = Bitboard<Bitboard2x22Configuration>
public typealias Bitboard2x23 = Bitboard<Bitboard2x23Configuration>
public typealias Bitboard2x24 = Bitboard<Bitboard2x24Configuration>
public typealias Bitboard2x25 = Bitboard<Bitboard2x25Configuration>
public typealias Bitboard2x26 = Bitboard<Bitboard2x26Configuration>
public typealias Bitboard2x27 = Bitboard<Bitboard2x27Configuration>
public typealias Bitboard2x28 = Bitboard<Bitboard2x28Configuration>
public typealias Bitboard2x29 = Bitboard<Bitboard2x29Configuration>
public typealias Bitboard2x30 = Bitboard<Bitboard2x30Configuration>
public typealias Bitboard2x31 = Bitboard<Bitboard2x31Configuration>
public typealias Bitboard3x11 = Bitboard<Bitboard3x11Configuration>
public typealias Bitboard3x12 = Bitboard<Bitboard3x12Configuration>
public typealias Bitboard3x13 = Bitboard<Bitboard3x13Configuration>
public typealias Bitboard3x14 = Bitboard<Bitboard3x14Configuration>
public typealias Bitboard3x15 = Bitboard<Bitboard3x15Configuration>
public typealias Bitboard3x16 = Bitboard<Bitboard3x16Configuration>
public typealias Bitboard3x17 = Bitboard<Bitboard3x17Configuration>
public typealias Bitboard3x18 = Bitboard<Bitboard3x18Configuration>
public typealias Bitboard3x19 = Bitboard<Bitboard3x19Configuration>
public typealias Bitboard3x20 = Bitboard<Bitboard3x20Configuration>
public typealias Bitboard3x21 = Bitboard<Bitboard3x21Configuration>
public typealias Bitboard4x8 = Bitboard<Bitboard4x8Configuration>
public typealias Bitboard4x9 = Bitboard<Bitboard4x9Configuration>
public typealias Bitboard4x10 = Bitboard<Bitboard4x10Configuration>
public typealias Bitboard4x11 = Bitboard<Bitboard4x11Configuration>
public typealias Bitboard4x12 = Bitboard<Bitboard4x12Configuration>
public typealias Bitboard4x13 = Bitboard<Bitboard4x13Configuration>
public typealias Bitboard4x14 = Bitboard<Bitboard4x14Configuration>
public typealias Bitboard4x15 = Bitboard<Bitboard4x15Configuration>
public typealias Bitboard5x7 = Bitboard<Bitboard5x7Configuration>
public typealias Bitboard5x8 = Bitboard<Bitboard5x8Configuration>
public typealias Bitboard5x9 = Bitboard<Bitboard5x9Configuration>
public typealias Bitboard5x10 = Bitboard<Bitboard5x10Configuration>
public typealias Bitboard5x11 = Bitboard<Bitboard5x11Configuration>
public typealias Bitboard5x12 = Bitboard<Bitboard5x12Configuration>
public typealias Bitboard6x6 = Bitboard<Bitboard6x6Configuration>
public typealias Bitboard6x7 = Bitboard<Bitboard6x7Configuration>
public typealias Bitboard6x8 = Bitboard<Bitboard6x8Configuration>
public typealias Bitboard6x9 = Bitboard<Bitboard6x9Configuration>
public typealias Bitboard6x10 = Bitboard<Bitboard6x10Configuration>
public typealias Bitboard7x5 = Bitboard<Bitboard7x5Configuration>
public typealias Bitboard7x6 = Bitboard<Bitboard7x6Configuration>
public typealias Bitboard7x7 = Bitboard<Bitboard7x7Configuration>
public typealias Bitboard7x8 = Bitboard<Bitboard7x8Configuration>
public typealias Bitboard7x9 = Bitboard<Bitboard7x9Configuration>
public typealias Bitboard8x4 = Bitboard<Bitboard8x4Configuration>
public typealias Bitboard8x5 = Bitboard<Bitboard8x5Configuration>
public typealias Bitboard8x6 = Bitboard<Bitboard8x6Configuration>
public typealias Bitboard8x7 = Bitboard<Bitboard8x7Configuration>
public typealias Bitboard9x4 = Bitboard<Bitboard9x4Configuration>
public typealias Bitboard9x5 = Bitboard<Bitboard9x5Configuration>
public typealias Bitboard9x6 = Bitboard<Bitboard9x6Configuration>
public typealias Bitboard9x7 = Bitboard<Bitboard9x7Configuration>
public typealias Bitboard10x4 = Bitboard<Bitboard10x4Configuration>
public typealias Bitboard10x5 = Bitboard<Bitboard10x5Configuration>
public typealias Bitboard10x6 = Bitboard<Bitboard10x6Configuration>
public typealias Bitboard11x3 = Bitboard<Bitboard11x3Configuration>
public typealias Bitboard11x4 = Bitboard<Bitboard11x4Configuration>
public typealias Bitboard11x5 = Bitboard<Bitboard11x5Configuration>
public typealias Bitboard12x3 = Bitboard<Bitboard12x3Configuration>
public typealias Bitboard12x4 = Bitboard<Bitboard12x4Configuration>
public typealias Bitboard12x5 = Bitboard<Bitboard12x5Configuration>
public typealias Bitboard13x3 = Bitboard<Bitboard13x3Configuration>
public typealias Bitboard13x4 = Bitboard<Bitboard13x4Configuration>
public typealias Bitboard14x3 = Bitboard<Bitboard14x3Configuration>
public typealias Bitboard14x4 = Bitboard<Bitboard14x4Configuration>
public typealias Bitboard15x3 = Bitboard<Bitboard15x3Configuration>
public typealias Bitboard15x4 = Bitboard<Bitboard15x4Configuration>
public typealias Bitboard16x2 = Bitboard<Bitboard16x2Configuration>
public typealias Bitboard16x3 = Bitboard<Bitboard16x3Configuration>
public typealias Bitboard17x2 = Bitboard<Bitboard17x2Configuration>
public typealias Bitboard17x3 = Bitboard<Bitboard17x3Configuration>
public typealias Bitboard18x2 = Bitboard<Bitboard18x2Configuration>
public typealias Bitboard18x3 = Bitboard<Bitboard18x3Configuration>
public typealias Bitboard19x2 = Bitboard<Bitboard19x2Configuration>
public typealias Bitboard19x3 = Bitboard<Bitboard19x3Configuration>
public typealias Bitboard20x2 = Bitboard<Bitboard20x2Configuration>
public typealias Bitboard20x3 = Bitboard<Bitboard20x3Configuration>
public typealias Bitboard21x2 = Bitboard<Bitboard21x2Configuration>
public typealias Bitboard21x3 = Bitboard<Bitboard21x3Configuration>
public typealias Bitboard22x2 = Bitboard<Bitboard22x2Configuration>
public typealias Bitboard23x2 = Bitboard<Bitboard23x2Configuration>
public typealias Bitboard24x2 = Bitboard<Bitboard24x2Configuration>
public typealias Bitboard25x2 = Bitboard<Bitboard25x2Configuration>
public typealias Bitboard26x2 = Bitboard<Bitboard26x2Configuration>
public typealias Bitboard27x2 = Bitboard<Bitboard27x2Configuration>
public typealias Bitboard28x2 = Bitboard<Bitboard28x2Configuration>
public typealias Bitboard29x2 = Bitboard<Bitboard29x2Configuration>
public typealias Bitboard30x2 = Bitboard<Bitboard30x2Configuration>
public typealias Bitboard31x2 = Bitboard<Bitboard31x2Configuration>
public typealias Bitboard2x32 = Bitboard<Bitboard2x32Configuration>
public typealias Bitboard2x33 = Bitboard<Bitboard2x33Configuration>
public typealias Bitboard2x34 = Bitboard<Bitboard2x34Configuration>
public typealias Bitboard2x35 = Bitboard<Bitboard2x35Configuration>
public typealias Bitboard2x36 = Bitboard<Bitboard2x36Configuration>
public typealias Bitboard2x37 = Bitboard<Bitboard2x37Configuration>
public typealias Bitboard2x38 = Bitboard<Bitboard2x38Configuration>
public typealias Bitboard2x39 = Bitboard<Bitboard2x39Configuration>
public typealias Bitboard2x40 = Bitboard<Bitboard2x40Configuration>
public typealias Bitboard2x41 = Bitboard<Bitboard2x41Configuration>
public typealias Bitboard2x42 = Bitboard<Bitboard2x42Configuration>
public typealias Bitboard2x43 = Bitboard<Bitboard2x43Configuration>
public typealias Bitboard2x44 = Bitboard<Bitboard2x44Configuration>
public typealias Bitboard2x45 = Bitboard<Bitboard2x45Configuration>
public typealias Bitboard2x46 = Bitboard<Bitboard2x46Configuration>
public typealias Bitboard2x47 = Bitboard<Bitboard2x47Configuration>
public typealias Bitboard2x48 = Bitboard<Bitboard2x48Configuration>
public typealias Bitboard2x49 = Bitboard<Bitboard2x49Configuration>
public typealias Bitboard2x50 = Bitboard<Bitboard2x50Configuration>
public typealias Bitboard2x51 = Bitboard<Bitboard2x51Configuration>
public typealias Bitboard2x52 = Bitboard<Bitboard2x52Configuration>
public typealias Bitboard2x53 = Bitboard<Bitboard2x53Configuration>
public typealias Bitboard2x54 = Bitboard<Bitboard2x54Configuration>
public typealias Bitboard2x55 = Bitboard<Bitboard2x55Configuration>
public typealias Bitboard2x56 = Bitboard<Bitboard2x56Configuration>
public typealias Bitboard2x57 = Bitboard<Bitboard2x57Configuration>
public typealias Bitboard2x58 = Bitboard<Bitboard2x58Configuration>
public typealias Bitboard2x59 = Bitboard<Bitboard2x59Configuration>
public typealias Bitboard2x60 = Bitboard<Bitboard2x60Configuration>
public typealias Bitboard2x61 = Bitboard<Bitboard2x61Configuration>
public typealias Bitboard2x62 = Bitboard<Bitboard2x62Configuration>
public typealias Bitboard2x63 = Bitboard<Bitboard2x63Configuration>
public typealias Bitboard3x22 = Bitboard<Bitboard3x22Configuration>
public typealias Bitboard3x23 = Bitboard<Bitboard3x23Configuration>
public typealias Bitboard3x24 = Bitboard<Bitboard3x24Configuration>
public typealias Bitboard3x25 = Bitboard<Bitboard3x25Configuration>
public typealias Bitboard3x26 = Bitboard<Bitboard3x26Configuration>
public typealias Bitboard3x27 = Bitboard<Bitboard3x27Configuration>
public typealias Bitboard3x28 = Bitboard<Bitboard3x28Configuration>
public typealias Bitboard3x29 = Bitboard<Bitboard3x29Configuration>
public typealias Bitboard3x30 = Bitboard<Bitboard3x30Configuration>
public typealias Bitboard3x31 = Bitboard<Bitboard3x31Configuration>
public typealias Bitboard3x32 = Bitboard<Bitboard3x32Configuration>
public typealias Bitboard3x33 = Bitboard<Bitboard3x33Configuration>
public typealias Bitboard3x34 = Bitboard<Bitboard3x34Configuration>
public typealias Bitboard3x35 = Bitboard<Bitboard3x35Configuration>
public typealias Bitboard3x36 = Bitboard<Bitboard3x36Configuration>
public typealias Bitboard3x37 = Bitboard<Bitboard3x37Configuration>
public typealias Bitboard3x38 = Bitboard<Bitboard3x38Configuration>
public typealias Bitboard3x39 = Bitboard<Bitboard3x39Configuration>
public typealias Bitboard3x40 = Bitboard<Bitboard3x40Configuration>
public typealias Bitboard3x41 = Bitboard<Bitboard3x41Configuration>
public typealias Bitboard3x42 = Bitboard<Bitboard3x42Configuration>
public typealias Bitboard4x16 = Bitboard<Bitboard4x16Configuration>
public typealias Bitboard4x17 = Bitboard<Bitboard4x17Configuration>
public typealias Bitboard4x18 = Bitboard<Bitboard4x18Configuration>
public typealias Bitboard4x19 = Bitboard<Bitboard4x19Configuration>
public typealias Bitboard4x20 = Bitboard<Bitboard4x20Configuration>
public typealias Bitboard4x21 = Bitboard<Bitboard4x21Configuration>
public typealias Bitboard4x22 = Bitboard<Bitboard4x22Configuration>
public typealias Bitboard4x23 = Bitboard<Bitboard4x23Configuration>
public typealias Bitboard4x24 = Bitboard<Bitboard4x24Configuration>
public typealias Bitboard4x25 = Bitboard<Bitboard4x25Configuration>
public typealias Bitboard4x26 = Bitboard<Bitboard4x26Configuration>
public typealias Bitboard4x27 = Bitboard<Bitboard4x27Configuration>
public typealias Bitboard4x28 = Bitboard<Bitboard4x28Configuration>
public typealias Bitboard4x29 = Bitboard<Bitboard4x29Configuration>
public typealias Bitboard4x30 = Bitboard<Bitboard4x30Configuration>
public typealias Bitboard4x31 = Bitboard<Bitboard4x31Configuration>
public typealias Bitboard5x13 = Bitboard<Bitboard5x13Configuration>
public typealias Bitboard5x14 = Bitboard<Bitboard5x14Configuration>
public typealias Bitboard5x15 = Bitboard<Bitboard5x15Configuration>
public typealias Bitboard5x16 = Bitboard<Bitboard5x16Configuration>
public typealias Bitboard5x17 = Bitboard<Bitboard5x17Configuration>
public typealias Bitboard5x18 = Bitboard<Bitboard5x18Configuration>
public typealias Bitboard5x19 = Bitboard<Bitboard5x19Configuration>
public typealias Bitboard5x20 = Bitboard<Bitboard5x20Configuration>
public typealias Bitboard5x21 = Bitboard<Bitboard5x21Configuration>
public typealias Bitboard5x22 = Bitboard<Bitboard5x22Configuration>
public typealias Bitboard5x23 = Bitboard<Bitboard5x23Configuration>
public typealias Bitboard5x24 = Bitboard<Bitboard5x24Configuration>
public typealias Bitboard5x25 = Bitboard<Bitboard5x25Configuration>
public typealias Bitboard6x11 = Bitboard<Bitboard6x11Configuration>
public typealias Bitboard6x12 = Bitboard<Bitboard6x12Configuration>
public typealias Bitboard6x13 = Bitboard<Bitboard6x13Configuration>
public typealias Bitboard6x14 = Bitboard<Bitboard6x14Configuration>
public typealias Bitboard6x15 = Bitboard<Bitboard6x15Configuration>
public typealias Bitboard6x16 = Bitboard<Bitboard6x16Configuration>
public typealias Bitboard6x17 = Bitboard<Bitboard6x17Configuration>
public typealias Bitboard6x18 = Bitboard<Bitboard6x18Configuration>
public typealias Bitboard6x19 = Bitboard<Bitboard6x19Configuration>
public typealias Bitboard6x20 = Bitboard<Bitboard6x20Configuration>
public typealias Bitboard6x21 = Bitboard<Bitboard6x21Configuration>
public typealias Bitboard7x10 = Bitboard<Bitboard7x10Configuration>
public typealias Bitboard7x11 = Bitboard<Bitboard7x11Configuration>
public typealias Bitboard7x12 = Bitboard<Bitboard7x12Configuration>
public typealias Bitboard7x13 = Bitboard<Bitboard7x13Configuration>
public typealias Bitboard7x14 = Bitboard<Bitboard7x14Configuration>
public typealias Bitboard7x15 = Bitboard<Bitboard7x15Configuration>
public typealias Bitboard7x16 = Bitboard<Bitboard7x16Configuration>
public typealias Bitboard7x17 = Bitboard<Bitboard7x17Configuration>
public typealias Bitboard7x18 = Bitboard<Bitboard7x18Configuration>
public typealias Bitboard8x8 = Bitboard<Bitboard8x8Configuration>
public typealias Bitboard8x9 = Bitboard<Bitboard8x9Configuration>
public typealias Bitboard8x10 = Bitboard<Bitboard8x10Configuration>
public typealias Bitboard8x11 = Bitboard<Bitboard8x11Configuration>
public typealias Bitboard8x12 = Bitboard<Bitboard8x12Configuration>
public typealias Bitboard8x13 = Bitboard<Bitboard8x13Configuration>
public typealias Bitboard8x14 = Bitboard<Bitboard8x14Configuration>
public typealias Bitboard8x15 = Bitboard<Bitboard8x15Configuration>
public typealias Bitboard9x8 = Bitboard<Bitboard9x8Configuration>
public typealias Bitboard9x9 = Bitboard<Bitboard9x9Configuration>
public typealias Bitboard9x10 = Bitboard<Bitboard9x10Configuration>
public typealias Bitboard9x11 = Bitboard<Bitboard9x11Configuration>
public typealias Bitboard9x12 = Bitboard<Bitboard9x12Configuration>
public typealias Bitboard9x13 = Bitboard<Bitboard9x13Configuration>
public typealias Bitboard9x14 = Bitboard<Bitboard9x14Configuration>
public typealias Bitboard10x7 = Bitboard<Bitboard10x7Configuration>
public typealias Bitboard10x8 = Bitboard<Bitboard10x8Configuration>
public typealias Bitboard10x9 = Bitboard<Bitboard10x9Configuration>
public typealias Bitboard10x10 = Bitboard<Bitboard10x10Configuration>
public typealias Bitboard10x11 = Bitboard<Bitboard10x11Configuration>
public typealias Bitboard10x12 = Bitboard<Bitboard10x12Configuration>
public typealias Bitboard11x6 = Bitboard<Bitboard11x6Configuration>
public typealias Bitboard11x7 = Bitboard<Bitboard11x7Configuration>
public typealias Bitboard11x8 = Bitboard<Bitboard11x8Configuration>
public typealias Bitboard11x9 = Bitboard<Bitboard11x9Configuration>
public typealias Bitboard11x10 = Bitboard<Bitboard11x10Configuration>
public typealias Bitboard11x11 = Bitboard<Bitboard11x11Configuration>
public typealias Bitboard12x6 = Bitboard<Bitboard12x6Configuration>
public typealias Bitboard12x7 = Bitboard<Bitboard12x7Configuration>
public typealias Bitboard12x8 = Bitboard<Bitboard12x8Configuration>
public typealias Bitboard12x9 = Bitboard<Bitboard12x9Configuration>
public typealias Bitboard12x10 = Bitboard<Bitboard12x10Configuration>
public typealias Bitboard13x5 = Bitboard<Bitboard13x5Configuration>
public typealias Bitboard13x6 = Bitboard<Bitboard13x6Configuration>
public typealias Bitboard13x7 = Bitboard<Bitboard13x7Configuration>
public typealias Bitboard13x8 = Bitboard<Bitboard13x8Configuration>
public typealias Bitboard13x9 = Bitboard<Bitboard13x9Configuration>
public typealias Bitboard14x5 = Bitboard<Bitboard14x5Configuration>
public typealias Bitboard14x6 = Bitboard<Bitboard14x6Configuration>
public typealias Bitboard14x7 = Bitboard<Bitboard14x7Configuration>
public typealias Bitboard14x8 = Bitboard<Bitboard14x8Configuration>
public typealias Bitboard14x9 = Bitboard<Bitboard14x9Configuration>
public typealias Bitboard15x5 = Bitboard<Bitboard15x5Configuration>
public typealias Bitboard15x6 = Bitboard<Bitboard15x6Configuration>
public typealias Bitboard15x7 = Bitboard<Bitboard15x7Configuration>
public typealias Bitboard15x8 = Bitboard<Bitboard15x8Configuration>
public typealias Bitboard16x4 = Bitboard<Bitboard16x4Configuration>
public typealias Bitboard16x5 = Bitboard<Bitboard16x5Configuration>
public typealias Bitboard16x6 = Bitboard<Bitboard16x6Configuration>
public typealias Bitboard16x7 = Bitboard<Bitboard16x7Configuration>
public typealias Bitboard17x4 = Bitboard<Bitboard17x4Configuration>
public typealias Bitboard17x5 = Bitboard<Bitboard17x5Configuration>
public typealias Bitboard17x6 = Bitboard<Bitboard17x6Configuration>
public typealias Bitboard17x7 = Bitboard<Bitboard17x7Configuration>
public typealias Bitboard18x4 = Bitboard<Bitboard18x4Configuration>
public typealias Bitboard18x5 = Bitboard<Bitboard18x5Configuration>
public typealias Bitboard18x6 = Bitboard<Bitboard18x6Configuration>
public typealias Bitboard18x7 = Bitboard<Bitboard18x7Configuration>
public typealias Bitboard19x4 = Bitboard<Bitboard19x4Configuration>
public typealias Bitboard19x5 = Bitboard<Bitboard19x5Configuration>
public typealias Bitboard19x6 = Bitboard<Bitboard19x6Configuration>
public typealias Bitboard20x4 = Bitboard<Bitboard20x4Configuration>
public typealias Bitboard20x5 = Bitboard<Bitboard20x5Configuration>
public typealias Bitboard20x6 = Bitboard<Bitboard20x6Configuration>
public typealias Bitboard21x4 = Bitboard<Bitboard21x4Configuration>
public typealias Bitboard21x5 = Bitboard<Bitboard21x5Configuration>
public typealias Bitboard21x6 = Bitboard<Bitboard21x6Configuration>
public typealias Bitboard22x3 = Bitboard<Bitboard22x3Configuration>
public typealias Bitboard22x4 = Bitboard<Bitboard22x4Configuration>
public typealias Bitboard22x5 = Bitboard<Bitboard22x5Configuration>
public typealias Bitboard23x3 = Bitboard<Bitboard23x3Configuration>
public typealias Bitboard23x4 = Bitboard<Bitboard23x4Configuration>
public typealias Bitboard23x5 = Bitboard<Bitboard23x5Configuration>
public typealias Bitboard24x3 = Bitboard<Bitboard24x3Configuration>
public typealias Bitboard24x4 = Bitboard<Bitboard24x4Configuration>
public typealias Bitboard24x5 = Bitboard<Bitboard24x5Configuration>
public typealias Bitboard25x3 = Bitboard<Bitboard25x3Configuration>
public typealias Bitboard25x4 = Bitboard<Bitboard25x4Configuration>
public typealias Bitboard25x5 = Bitboard<Bitboard25x5Configuration>
public typealias Bitboard26x3 = Bitboard<Bitboard26x3Configuration>
public typealias Bitboard26x4 = Bitboard<Bitboard26x4Configuration>
public typealias Bitboard27x3 = Bitboard<Bitboard27x3Configuration>
public typealias Bitboard27x4 = Bitboard<Bitboard27x4Configuration>
public typealias Bitboard28x3 = Bitboard<Bitboard28x3Configuration>
public typealias Bitboard28x4 = Bitboard<Bitboard28x4Configuration>
public typealias Bitboard29x3 = Bitboard<Bitboard29x3Configuration>
public typealias Bitboard29x4 = Bitboard<Bitboard29x4Configuration>
public typealias Bitboard30x3 = Bitboard<Bitboard30x3Configuration>
public typealias Bitboard30x4 = Bitboard<Bitboard30x4Configuration>
public typealias Bitboard31x3 = Bitboard<Bitboard31x3Configuration>
public typealias Bitboard31x4 = Bitboard<Bitboard31x4Configuration>
public typealias Bitboard32x2 = Bitboard<Bitboard32x2Configuration>
public typealias Bitboard32x3 = Bitboard<Bitboard32x3Configuration>
public typealias Bitboard33x2 = Bitboard<Bitboard33x2Configuration>
public typealias Bitboard33x3 = Bitboard<Bitboard33x3Configuration>
public typealias Bitboard34x2 = Bitboard<Bitboard34x2Configuration>
public typealias Bitboard34x3 = Bitboard<Bitboard34x3Configuration>
public typealias Bitboard35x2 = Bitboard<Bitboard35x2Configuration>
public typealias Bitboard35x3 = Bitboard<Bitboard35x3Configuration>
public typealias Bitboard36x2 = Bitboard<Bitboard36x2Configuration>
public typealias Bitboard36x3 = Bitboard<Bitboard36x3Configuration>
public typealias Bitboard37x2 = Bitboard<Bitboard37x2Configuration>
public typealias Bitboard37x3 = Bitboard<Bitboard37x3Configuration>
public typealias Bitboard38x2 = Bitboard<Bitboard38x2Configuration>
public typealias Bitboard38x3 = Bitboard<Bitboard38x3Configuration>
public typealias Bitboard39x2 = Bitboard<Bitboard39x2Configuration>
public typealias Bitboard39x3 = Bitboard<Bitboard39x3Configuration>
public typealias Bitboard40x2 = Bitboard<Bitboard40x2Configuration>
public typealias Bitboard40x3 = Bitboard<Bitboard40x3Configuration>
public typealias Bitboard41x2 = Bitboard<Bitboard41x2Configuration>
public typealias Bitboard41x3 = Bitboard<Bitboard41x3Configuration>
public typealias Bitboard42x2 = Bitboard<Bitboard42x2Configuration>
public typealias Bitboard42x3 = Bitboard<Bitboard42x3Configuration>
public typealias Bitboard43x2 = Bitboard<Bitboard43x2Configuration>
public typealias Bitboard44x2 = Bitboard<Bitboard44x2Configuration>
public typealias Bitboard45x2 = Bitboard<Bitboard45x2Configuration>
public typealias Bitboard46x2 = Bitboard<Bitboard46x2Configuration>
public typealias Bitboard47x2 = Bitboard<Bitboard47x2Configuration>
public typealias Bitboard48x2 = Bitboard<Bitboard48x2Configuration>
public typealias Bitboard49x2 = Bitboard<Bitboard49x2Configuration>
public typealias Bitboard50x2 = Bitboard<Bitboard50x2Configuration>
public typealias Bitboard51x2 = Bitboard<Bitboard51x2Configuration>
public typealias Bitboard52x2 = Bitboard<Bitboard52x2Configuration>
public typealias Bitboard53x2 = Bitboard<Bitboard53x2Configuration>
public typealias Bitboard54x2 = Bitboard<Bitboard54x2Configuration>
public typealias Bitboard55x2 = Bitboard<Bitboard55x2Configuration>
public typealias Bitboard56x2 = Bitboard<Bitboard56x2Configuration>
public typealias Bitboard57x2 = Bitboard<Bitboard57x2Configuration>
public typealias Bitboard58x2 = Bitboard<Bitboard58x2Configuration>
public typealias Bitboard59x2 = Bitboard<Bitboard59x2Configuration>
public typealias Bitboard60x2 = Bitboard<Bitboard60x2Configuration>
public typealias Bitboard61x2 = Bitboard<Bitboard61x2Configuration>
public typealias Bitboard62x2 = Bitboard<Bitboard62x2Configuration>
public typealias Bitboard63x2 = Bitboard<Bitboard63x2Configuration>
