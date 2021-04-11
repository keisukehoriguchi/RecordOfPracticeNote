//
//  CustomTabView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView{
            FollowersTweet(inputTextOne: "")
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Posts")
                }
            ResultView()
                .tabItem {
                    Image(systemName: "waveform.path.ecg.rectangle.fill")
                    Text("Result")
                }
            PracticesView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Record")
                }
            Setting()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Other")
                }
            MyPage()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("MyPage")
                }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
