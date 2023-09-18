import Foundation

public protocol Pointable: Equatable, Comparable {
  var file: Int { get }
  var rank: Int { get }
}
