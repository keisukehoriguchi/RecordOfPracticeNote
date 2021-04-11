//
//  ResultView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack {
            VStack{
                Text("Picker1")
                Text("Picker2")
                Text("Picker3")
            }
            Divider()
            Spacer()
            Image(systemName: "heart.fill")
            Spacer()
            Image(systemName: "heart")
            Spacer()
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
