//
//  TweetView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/10.
//

import SwiftUI

struct TweetView: View {
    
    @Binding var record:Record
    
    var body: some View {
        VStack{
            HStack{
                Label(
                    title: { Text(record.user.name) },
                    icon: { Image(systemName: "moon") }
                )
                Label(
                    title: { Text(record.user.weightName.text) },
                    icon: { Image(systemName: "42.circle") }
                )
            }
            Divider()
                .padding(.all, 2)
            VStack(alignment: .leading) {
                Text(record.practice.name)
                Text(record.notice)
                Text(record.next)
            }
            Divider()
                .padding(.all, 2)
            HStack{
                Spacer()
                Image(systemName: "message")
                Text("1")
                Spacer()
                Image(systemName: "heart")
                Text("1")
                Spacer()
            }
        }
        .card()
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(record: SampleData.shared.$othrRecords[0])
    }
}
