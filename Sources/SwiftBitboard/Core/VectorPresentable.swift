import Foundation

public protocol VectorPresentable {
  
  var infinity: Bool { get }
  var file: Int { get }
  var rank: Int { get }
  
//  // 上下を反転
//  var flip_vertically: Self { get }
//  // 左右を反転
//  var flip_horizontally: Self { get }
  
  init(file: Int, rank: Int, _ infinity: Bool)
}
