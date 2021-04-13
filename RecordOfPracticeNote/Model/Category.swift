//
//  Category.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/11.
//

import Foundation

struct Propose {
    var categoryValue: Int
    var categoryName: RawCategory {
        return RawCategory(rawValue: categoryValue)!
    }
    mutating func update(_ rawCategory: RawCategory) {
        categoryValue = rawCategory.rawValue
    }
    
    enum RawCategory: Int {
        case programing
        case illustration
        case movie_animation
        case script_comic_novel
        case createMusic
        case musicPerformance
        case streaming_performance
        case maker
        case sports
        case other
        
        var text: String {
            switch self {
            case .programing:
                return NSLocalizedString("プログラミング", comment: "")
            case .illustration:
                return NSLocalizedString("イラスト", comment: "")
            case .movie_animation:
                return NSLocalizedString("動画/アニメーション", comment: "")
            case .script_comic_novel:
                return NSLocalizedString("脚本/漫画/小説", comment: "")
            case .createMusic:
                return NSLocalizedString("音楽製作", comment: "")
            case .musicPerformance:
                return NSLocalizedString("演奏/歌唱", comment: "")
            case .streaming_performance:
                return NSLocalizedString("配信/パフォーマンス", comment: "")
            case .maker:
                return NSLocalizedString("製作", comment: "")
            case .sports:
                return NSLocalizedString("スポーツ", comment: "")
            case .other:
                return NSLocalizedString("その他", comment: "")
            }
        }
    }
}
