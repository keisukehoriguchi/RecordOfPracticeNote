//
//  Record.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//
//
import Foundation

struct Record {
    var user:User
    var practice:Practice
    var recordID:UUID
    var timeInterval:TimeInterval
    var notice:String
    var next:String
    var attachedFile:String
    var date:Date
}
