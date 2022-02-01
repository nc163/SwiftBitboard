//
//  Bitboardable.swift
//  Bitboard
//
//  Created by noda on 2021/08/30.
//

import Foundation
import BigInt

public protocol Bitboardable: Equatable, CustomDebugStringConvertible, LosslessStringConvertible {
    
    //
    // MARK: property
    //
    
    typealias RawValue = BigUInt
    
    // 縦の列の数
    var fileWidth: Int { get }
    // 横の列の数
    var rankWidth: Int { get }
    /// 生データ
    var rawValue: RawValue { get }
    
    
    //
    // MARK: init
    //
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    ///   - rawValue: <#rawValue description#>
    init(fileWidth: Int, rankWidth: Int, rawValue: BigUInt)

}

internal extension Bitboardable {
    var lookUpStage: LookUpStage {
        get { return g.lookUpTable[self.fileWidth, self.rankWidth] }
    }
}
