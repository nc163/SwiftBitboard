import Foundation

public protocol MovePresentable: Hashable {
  var from: Point { get }
  var to: Point { get }
}
