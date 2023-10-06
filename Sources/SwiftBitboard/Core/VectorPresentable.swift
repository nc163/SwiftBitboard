import Foundation

public protocol VectorPresentable {
  
  var x: Int { get }
  var y: Int { get }
  var infinity: Bool { get }

//  // 上下を反転
//  var flip_vertically: Self { get }
//  // 左右を反転
//  var flip_horizontally: Self { get }
  
  init(x: Int, y: Int, _ infinity: Bool)
}
