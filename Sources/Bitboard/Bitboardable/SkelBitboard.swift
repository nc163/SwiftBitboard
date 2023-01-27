internal struct SkelBitboard<T: FixedWidthInteger & UnsignedInteger>: Bitboardable {

  
  typealias RawValue = T

  var rawValue: RawValue
  var fileWidth: Int
  var rankWidth: Int

  init(rawValue: RawValue, fileWidth: Int, rankWidth: Int) {
    self.rawValue = rawValue
    self.fileWidth = fileWidth
    self.rankWidth = rankWidth
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}
