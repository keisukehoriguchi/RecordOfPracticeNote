//
//  Mypage.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct MyPage: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "person")
                Spacer()
                Button("Follow") {
                    print("aiu")
                }
                Spacer()
            }
            HStack{
                Spacer()
                Text("1")
                Text("follow")
                Spacer()
                Text("2")
                Text("follower")
                Spacer()
            }
            .padding()
            
            ProfileView(inputTextOne: "", inputTextTwo: "")
            
            ScrollView(.horizontal) {
                HStack{
                    VStack{
                        Image(systemName: "moon")
                        Text("Category1")
                    }
                    VStack{
                        Image(systemName: "moon")
                        Text("Category2")
                    }
                    VStack{
                        Image(systemName: "moon")
                        Text("Category2")
                    }
                }
            }
            .padding()
            List{
                Section(header: Text("最近の投稿")) {
                    HStack{
                        Image(systemName: "sun.max")
                        Text("実践と勉強の割合について")
                    }
                    HStack{
                        Image(systemName: "moon")
                        Text("Tips")
                    }
                }
            }
        }
    }
}

struct Mypage_Previews: PreviewProvider {
    static var previews: some View {
        MyPage()
    }
}
