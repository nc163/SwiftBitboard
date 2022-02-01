//
//  BitboardErrors.swift
//  SwiftBitBoard
//
//  Created by yo_shin_o on 2020/01/23.
//  Copyright © 2020 Synapz Inc. All rights reserved.
//

import Foundation

/// ビットボード操作でのエラー
public enum BitboardErrors: Error, CustomStringConvertible {
    case arithmetic(String)
    case badArgument(String)
    case notImplemented(String = "未実装")
    case outOfRange(String)
#if DEBUG
    case internalError(String)
#endif
    
    public var description: String {
        switch self {
        case .arithmetic:
            return "演算エラー"
        case .badArgument:
            return "引数によるエラー"
        case .notImplemented:
            return "未実装の動作"
        case .outOfRange:
            return "許容範囲外への操作"
#if DEBUG
        case .internalError:
            return "内部エラー"
#endif
        }
    }
    
}


internal let throwArithmetic = { (message: String) throws in throw BitboardErrors.arithmetic(message) }

internal let Arithmetic = { (message: String) throws in throw BitboardErrors.arithmetic(message) }
internal let BadArgument = { (message: String) throws in throw BitboardErrors.badArgument(message) }
internal let NotImplemented = { (message: String) throws in throw BitboardErrors.notImplemented(message) }
internal let OutOfRange = { (message: String) throws in throw BitboardErrors.outOfRange(message) }

#if DEBUG

internal let InternalError = { (message: String) throws in throw BitboardErrors.internalError(message) }

//
internal let BitboardError = { (type: BitboardErrors) throws in throw type }

#endif
//// TODO: これリリースビルドでどう変換されんの？？？？？
//internal let ForceBitboardError = { (type: BitboardErrors) in try! BitboardError(type) }

private var initCollectionViewFlowLayout : Void = {
    // ここで色々設定する
    // frame、boundsとか使う
}()

