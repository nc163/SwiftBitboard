import Foundation

public struct FixedSizeableIterator<T: FixedSizeable>: Sequence, IteratorProtocol {

  public typealias Element = T.Element
  public typealias Index   = T.Index

  var currentIndex: Index
  let fixedSizeable: T
  
  init(_ fixedSizeable: T) {
    self.fixedSizeable = fixedSizeable
    self.currentIndex = .init(file: fixedSizeable.baseIndex, rank: fixedSizeable.baseIndex)
  }
  
  public mutating func next() -> Element? {
    guard fixedSizeable.inside(coordinater: currentIndex) else { return nil }
    
    let element = fixedSizeable[currentIndex]

    if fixedSizeable.fileRange.contains(currentIndex.file + 1) {
      currentIndex = .init(file: currentIndex.file + 1, rank: currentIndex.rank)
    } else {
      currentIndex = .init(file: fixedSizeable.baseIndex, rank: currentIndex.rank + 1)
    }
    
    return element
  }
}
