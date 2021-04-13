//
//  ResultView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct ResultView: View {
    @State var weightValue:Int
    @State var categoryValue:Int
    @State var type:Bool
    
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical) {
                VStack {
                    Form(content: {
                        Section(header: Text("選択してね")){
                            Picker(selection: $weightValue, label: Text("Weight"), content: {
                                ForEach(0..<4){
                                    let user:User = User(name: "", id: "", weightValue: $0)
                                    Text(user.weightName.text)
                                }
                            })
                            Picker(selection: $categoryValue, label: Text("Category"), content: {
                                ForEach(0..<9){
                                    let category:Propose = Propose(categoryValue: $0)
                                    Text(category.categoryName.text)
                                }
                            })
                            Picker(selection: $type, label: Text("Type"), content: {
                                Text("実践").tag(true)
                                Text("練習").tag(false)
                            })
                        }
                    })
                    .padding(.all, 0)
                    .frame(width: 350, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Divider()
                    Image(systemName: "heart.fill")
                        .frame(width: 300, height: 300, alignment: .center)
                        .card(color: .blue)
                    Spacer()
                    Image(systemName: "heart")
                        .frame(width: 300, height: 300, alignment: .center)
                        .card(color: .green)
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        })
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(weightValue: 1, categoryValue: 1,type: true)
        
        
    }
}
