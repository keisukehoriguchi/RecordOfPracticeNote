//
//  Message.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/11.
//

import Foundation

struct Message:Codable {
    var comment:String
    var commentID:UUID
    var userid:UUID
    var relation:UUID
    var favorite:[UUID]
}
