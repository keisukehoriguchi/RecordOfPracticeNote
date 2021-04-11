//
//  Setting.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        List{
            Section(header: Text("コラム")) {
                HStack{
                    Image(systemName: "sun.max")
                    Text("実践と勉強の割合について")
                }
                HStack{
                    Image(systemName: "moon")
                    Text("Tips")
                }
            }
            Section(header: Text("Setting")) {
                HStack{
                    Image(systemName: "paperplane")
                    Text("ご意見、ご要望")
                }
                HStack{
                    Image(systemName: "star")
                    Text("評価")
                }
                HStack{
                    Image(systemName: "leaf")
                    Text("作者のTwitter")
                }
            }
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
