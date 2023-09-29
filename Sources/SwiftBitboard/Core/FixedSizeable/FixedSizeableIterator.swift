import Foundation

public struct FixedSizeableIterator<T: FixedSizeable>: IteratorProtocol {

  public typealias Element = T.Element

  var currentFile: Int = 0
  var currentRank: Int = 0
  let fixedSizeable: T
  
  init(_ fixedSizeable: T) {
      self.fixedSizeable = fixedSizeable
  }
  
  public mutating func next() -> Element? {
    guard currentRank < fixedSizeable.rankWidth else { return nil }
    
    let element = fixedSizeable[currentFile, currentRank]
    
    if currentFile < fixedSizeable.fileWidth - 1 {
      currentFile += 1
    } else {
      currentFile = 0
      currentRank += 1
    }
    
    return element
  }
}
