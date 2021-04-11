//
//  FollowersTweet.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI
import Foundation

struct FollowersTweet: View {
    
    @State var inputTextOne:String
    
    var body: some View {
        VStack {
            HStack {
                TextField("input search keyword", text: $inputTextOne) { _ in
                    print("onEditingChanged")
                } onCommit: {
                    print("onCommit")
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.asciiCapable)
                    
                Button("Search") {
                    print("onSearching")
                }
            }
            List{
                ForEach(0 ..< SampleData.shared.othrRecords.count) { index in
                    TweetView(record: SampleData.shared.$othrRecords[index])
                }
            }
        }
        .padding(.all, 10.0)
    }
}

struct FollowersTweet_Previews: PreviewProvider {
    static var previews: some View {
        FollowersTweet(inputTextOne: "")
    }
}
