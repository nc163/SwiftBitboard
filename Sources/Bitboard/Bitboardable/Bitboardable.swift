import Foundation

public protocol Bitboardable: Equatable, CustomStringConvertible, CustomDebugStringConvertible {
  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  typealias Dimension = BitboardDimension
  typealias Line = BitBoardLine<Self>
  typealias Point = BitBoardPoint<Self>

  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { get }

  func clone() -> Self
}

extension Bitboardable {

  public var square: Bool {
    return self.fileWidth == self.rankWidth
  }

  public var fileRange: ClosedRange<Int> {
    return 1...self.fileWidth
  }

  public var rankRange: ClosedRange<Int> {
    return 1...self.rankWidth
  }
  
  ///
  var popcount: Int {
    return self.rawValue.nonzeroBitCount
  }
  
  ///
  func popbits() -> [Self.Point] {
    var swapped: RawValue = self.rawValue.bitSwapped
    var popbits: Array<Self.Point> = .init()

    repeat {
      let zero_bit_count = swapped.trailingZeroBitCount
      let swapped_pop_bit = (zero_bit_count + 1)
      swapped = swapped >> swapped_pop_bit

      popbits.append( bit_to_point(bit: swapped_pop_bit) )
    } while( swapped == 0 )

    return popbits
  }
}

extension Bitboardable {

  // 2点が直線上にあるかどうかを判定する
  static func straight(_ left: Self.Point, _ right: Self.Point) -> Bool {
    return left.file == right.file
    || left.rank == right.rank
    || abs( Double(left.file - right.file) / Double(left.rank - right.rank)) == 1.00
  }

  var dimension: Dimension {
      Dimension.init(fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }


  func bit_to_point (bit: Int) -> Self.Point {
    return .init(file: 0, rank: 0, owner: self)
  }

  func point_to_bit (point: Self.Point) -> (file: Int, rank: Int) {
    return (0 , 0)
  }
}



// MARK: CustomStringConvertible
extension Bitboardable {

  /// <#Description#>
  /// example:
  ///*----
  ///-*---
  ///--*--
  ///---*-
  public var description: String {
    var retval: String = ""
    var index: RawValue = 1
    let current: RawValue = self.rawValue
    let fileRange = (1..<(self.fileWidth + 1))
    let rankRange = (1..<(self.rankWidth + 1))

    // " ABCDE..."
    rankRange.forEach { (r) in
      fileRange.forEach { (f) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}

// MARK: CustomDebugStringConvertible
extension Bitboardable {
  
  /// <#Description#>
  private var space_padding: String {
    return self.rankWidth >= 10 ? "  " : " ";
  }

  /// 桁数を合わせて０埋めで出力する
  /// - Parameter rank: <#rank description#>
  /// - Returns: <#description#>
  @inline(__always)
  private func zeroPadding_fileWidthformat (rank: Int) -> String {
    let format: String = self.rankWidth >= 10 ? "%02d" : "%01d";
    return String(format: format, rank)
  }

  /// <#Description#>
  /// example:
  ///  ABCDE       ABCDE
  ///01*----      1*----
  ///02-*---  or  2-*---
  ///03--*--      3--*--
  ///04---*-      4---*-
  public var debugDescription: String {
    var retval: String = ""
    var index: RawValue = 1
    let current: RawValue = self.rawValue
    let fileRange = (1..<(self.fileWidth + 1))
    let rankRange = (1..<(self.rankWidth + 1))

    // " ABCDE..."
    retval += space_padding;
    fileRange.forEach { retval += String(UnicodeScalar(64 + $0)!) };  retval += "\n";
    rankRange.forEach { (r) in
      retval += zeroPadding_fileWidthformat(rank: r)
      fileRange.forEach { (f) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}
