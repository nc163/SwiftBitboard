import Foundation

public struct FixedSizeableIterator<T: FixedSizeable>: Sequence, IteratorProtocol {

  public typealias Element = T.Element
  public typealias Index   = T.Index

  var currentIndex: Index
  let fixedSizeable: T
  
  init(_ fixedSizeable: T) {
    self.fixedSizeable = fixedSizeable
    self.currentIndex = .init(x: 0, y: 0)
  }
  
  public mutating func next() -> Element? {
    guard fixedSizeable.inside(coordinater: currentIndex) else { return nil }
    
    let element = fixedSizeable[currentIndex]

    if fixedSizeable.x_range.contains(currentIndex.x + 1) {
      currentIndex = .init(x: currentIndex.x + 1, y: currentIndex.y)
    } else {
      currentIndex = .init(x: 0, y: currentIndex.y + 1)
    }
    
    return element
  }
}
