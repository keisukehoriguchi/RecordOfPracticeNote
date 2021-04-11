//
//  PracticeViewCell.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct PracticeViewCell: View {
    var color: Color
    var body: some View {
        Rectangle()
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .foregroundColor(color)
            .cornerRadius(20)
    }
}

struct PracticeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        PracticeViewCell(color: .blue)
    }
}
