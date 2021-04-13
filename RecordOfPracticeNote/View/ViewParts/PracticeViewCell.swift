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
            .frame(width: 220, height: 130)
            .foregroundColor(.white)
            .cornerRadius(20)
            .shadow(radius: 5, x: 2, y: 2)
            .padding(.all, 8)
    }
}

struct PracticeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        PracticeViewCell(color: .blue)
    }
}
