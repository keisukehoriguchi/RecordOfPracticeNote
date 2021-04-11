//
//  AddRecordView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct PracticesView: View {
    var body: some View {
        VStack{
            Group {
                Section {
                    Text("Category")
                }
                ScrollView(.horizontal){
                    HStack{
                        PracticeViewCell(color: .green)
                        PracticeViewCell(color: .blue)
                    }
                }
            }
            Group {
                Section {
                    Text("Category2")
                }
                ScrollView(.horizontal){
                    HStack{
                        PracticeViewCell(color: .green)
                        PracticeViewCell(color: .blue)
                    }
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus.circle.fill").resizable()
            }).frame(width: 80, height: 80)
            }
            .padding(.all, 5)
        }
    }
}

struct AddRecordView_Previews: PreviewProvider {
    static var previews: some View {
        PracticesView()
    }
}
