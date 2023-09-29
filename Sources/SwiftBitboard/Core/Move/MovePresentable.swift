import Foundation

public protocol MovePresentable: Hashable {
  var from: Coordinate { get }
  var to: Coordinate { get }
}
