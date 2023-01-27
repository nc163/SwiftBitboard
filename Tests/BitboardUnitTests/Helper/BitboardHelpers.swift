@testable import Bitboard
import Foundation

func EmptyBitboards() -> Array<any Bitboard> {
  var retval: Array<any Bitboard> = []
  
  retval.append(Bitboard2x2.init(rawValue: .zero))
  retval.append(Bitboard3x3.init(rawValue: .zero))
  retval.append(Bitboard4x4.init(rawValue: .zero))
  retval.append(Bitboard5x5.init(rawValue: .zero))
  retval.append(Bitboard6x6.init(rawValue: .zero))
  retval.append(Bitboard7x7.init(rawValue: .zero))
  retval.append(Bitboard8x8.init(rawValue: .zero))
  retval.append(Bitboard9x9.init(rawValue: .zero))
  retval.append(Bitboard10x10.init(rawValue: .zero))
  retval.append(Bitboard11x11.init(rawValue: .zero))

  return retval
}

func FillBitboards() -> Array<any Bitboard> {
  var retval: Array<any Bitboard> = []
  
  retval.append(Bitboard2x2.init(rawValue: .max))
  retval.append(Bitboard3x3.init(rawValue: .max))
  retval.append(Bitboard4x4.init(rawValue: .max))
  retval.append(Bitboard5x5.init(rawValue: .max))
  retval.append(Bitboard6x6.init(rawValue: .max))
  retval.append(Bitboard7x7.init(rawValue: .max))
  retval.append(Bitboard8x8.init(rawValue: .max))
  retval.append(Bitboard9x9.init(rawValue: .max))
  retval.append(Bitboard10x10.init(rawValue: .max))
  retval.append(Bitboard11x11.init(rawValue: .max))

  return retval
}

func RandomAnyBitboard() -> Array<any Bitboard> {
  var retval: Array<any Bitboard> = []
  
  retval.append(Bitboard2x2.init(rawValue: .zero))
  retval.append(Bitboard3x3.init(rawValue: .zero))
  retval.append(Bitboard4x4.init(rawValue: .zero))
  retval.append(Bitboard5x5.init(rawValue: .zero))
  retval.append(Bitboard6x6.init(rawValue: .zero))
  retval.append(Bitboard7x7.init(rawValue: .zero))
  retval.append(Bitboard8x8.init(rawValue: .zero))
  retval.append(Bitboard9x9.init(rawValue: .zero))
  retval.append(Bitboard10x10.init(rawValue: .zero))
  retval.append(Bitboard11x11.init(rawValue: .zero))
  
  for _ in 1..<10 { retval.append(AnyBitboard<UInt8>.init()) }
  for _ in 1..<10 { retval.append(AnyBitboard<UInt16>.init()) }
  for _ in 1..<10 { retval.append(AnyBitboard<UInt32>.init()) }
  for _ in 1..<10 { retval.append(AnyBitboard<UInt64>.init()) }
  for _ in 1..<10 { retval.append(AnyBitboard<UInt128>.init()) }

  return retval
}

extension Bitboard {

  /// <#Description#>
  /// - Returns: <#description#>
  func valid() -> Bool {
    let need_bit_width: Int = (fileWidth * rankWidth)
    return need_bit_width < self.rawValue.bitWidth
  }
}


//
//public let bb_5x5_empty_32  = Bitboard64.init(rawValue: 0, fileWidth: 5, rankWidth: 5)
//public let bb_5x5_empty_64  = Bitboard64.init(rawValue: 0, fileWidth: 5, rankWidth: 5)
//public let bb_5x5_empty_128 = Bitboard128.init(rawValue: 0, fileWidth: 5, rankWidth: 5)
//public let example_5x5_empty = """
// ABCDE
//1-----
//2-----
//3-----
//4-----
//5-----
//"""
//
//
//public let bb_8x8_empty_64  = Bitboard64.init(rawValue: 0, fileWidth: 8, rankWidth: 8)
//public let bb_8x8_empty_128 = Bitboard128.init(rawValue: 0, fileWidth: 8, rankWidth: 8)
//public let example_8x8_empty = """
// ABCDEFGH
//1--------
//2--------
//3--------
//4--------
//5--------
//6--------
//7--------
//8--------
//"""
//
//
//public let bb_8x8_bit1o1_64 = Bitboard64.init(rawValue: Bitboard64.RawValue(example_8x8_bit1o1_bits), fileWidth: 8, rankWidth: 8)
//public let bb_8x8_bit1o1_128 = Bitboard128.init(rawValue: Bitboard128.RawValue(example_8x8_bit1o1_bits), fileWidth: 8, rankWidth: 8)
//public let example_8x8_bit1o1_bits = 0b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000001
//public let example_8x8_bit1o1 = """
// ABCDEFGH
//1*-------
//2--------
//3--------
//4--------
//5--------
//6--------
//7--------
//8--------
//"""
//
//
//public let bb_8x8_bit8o8_64 = Bitboard64.init(rawValue: Bitboard64.RawValue(example_8x8_bit8o8_bits), fileWidth: 8, rankWidth: 8)
//public let bb_8x8_bit8o8_128 = Bitboard128.init(rawValue: Bitboard128.RawValue(example_8x8_bit8o8_bits), fileWidth: 8, rankWidth: 8)
//public let example_8x8_bit8o8_bits: UInt64 = 0b10000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000
//public let example_8x8_bit8o8 = """
// ABCDEFGH
//1--------
//2--------
//3--------
//4--------
//5--------
//6--------
//7--------
//8-------*
//"""
//
//
//public let bb_8x8_R_64 = Bitboard64.init(rawValue: Bitboard64.RawValue(example_8x8_R_bits), fileWidth: 8, rankWidth: 8)
//public let bb_8x8_R_128 = Bitboard128.init(rawValue: Bitboard128.RawValue(example_8x8_R_bits), fileWidth: 8, rankWidth: 8)
//public let example_8x8_R_bits = 0b00100010_00010010_00001010_00001110_00010010_00100010_00100010_00011110
//public let example_8x8_R = """
// ABCDEFGH
//1-****---
//2-*---*--
//3-*---*--
//4-*--*---
//5-***----
//6-*-*----
//7-*--*---
//8-*---*--
//"""
//
//public let example_8x8_Rr90 = """
// ABCDEFGH
//1--------
//2********
//3---*---*
//4--**---*
//5-*--*--*
//6*----**-
//7--------
//8--------
//"""
//
//public let example_8x8_Rr180 = """
// ABCDEFGH
//1--*---*-
//2---*--*-
//3----*-*-
//4----***-
//5---*--*-
//6--*---*-
//7--*---*-
//8---****-
//"""
