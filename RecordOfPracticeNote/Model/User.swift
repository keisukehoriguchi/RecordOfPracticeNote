//
//  User.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import Foundation

struct User:Codable {
    var name:String = ""
    var id:String = ""
    
    var weightValue: Int
    var weightName: RawWeight {
        return RawWeight(rawValue: weightValue)!
    }
    mutating func update(_ rawWeight: RawWeight) {
        weightValue = rawWeight.rawValue
    }
    
    enum RawWeight: Int {
        case lightweight
        case welterweight
        case middleweight
        case heavyweight
        
        var text: String {
            switch self {
            case .lightweight:
                return NSLocalizedString("ライト級", comment: "")
            case .welterweight:
                return NSLocalizedString("ウェルター級", comment: "")
            case .middleweight:
                return NSLocalizedString("ミドル級", comment: "")
            case .heavyweight:
                return NSLocalizedString("ヘビー級", comment: "")
            }
        }
    }
}
