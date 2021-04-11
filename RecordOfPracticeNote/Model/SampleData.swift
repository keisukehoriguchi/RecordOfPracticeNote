//
//  SampleData.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import Foundation
import SwiftUI

class SampleData {
    private init() { }
    static let shared = SampleData()
    var users: [User] = [User(name: "Chiguri", id: "qwe",weightValue: 1),User(name: "Ohsako", id: "qwe",weightValue: 0)]
    var practices: [Practice] = [Practice(name: "アプリ作成", category: Category(categoryValue: 1), type: true), Practice(name: "動画でSwift勉強", category: Category(categoryValue: 1), type: false), Practice(name: "音楽製作", category: Category(categoryValue: 6), type: true)]

    var records: [Record] = [Record(user: User(name: "Chiguri", id: "qwe",weightValue: 1), practice: Practice(name: "アプリ作成", category: Category(categoryValue: 1), type: true), date: Date(), notice: "頑張った！",next: "明日は2ページ目からやる", attachedFile: "今日はなし"), Record(user: User(name: "Chiguri", id: "qwe",weightValue: 1), practice: Practice(name: "動画でSwift勉強", category: Category(categoryValue: 1), type: false), date: Date(), notice: "頑張った！",next: "明日は2ページ目からやる", attachedFile: "今日はなし")]

    @State var othrRecords: [Record] = [Record(user: User(name: "Jonasan", id: "qwe",weightValue: 1),practice: Practice(name: "動画でSwift勉強", category: Category(categoryValue: 1), type: false), date: Date(), notice: "めっちゃみた！",next: "明日は9ページ目からやる", attachedFile: "ありよりのあり"), Record(user: User(name: "Kate", id: "qwe",weightValue: 1), practice: Practice(name: "サッカー", category: Category(categoryValue: 1), type: false), date: Date(), notice: "ポジション意識する！",next: "次は来年！", attachedFile: "今日はなし")]
}
