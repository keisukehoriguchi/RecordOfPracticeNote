//
//  ProfileView.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/07.
//

import SwiftUI

struct ProfileView: View {
    @State var inputTextOne:String
    @State var inputTextTwo:String
    
    var body: some View {
        VStack {
            HStack {
                Text("Profile:")
                TextField("input search keyword", text: $inputTextOne) { _ in
                    print("onEditingChanged")
                } onCommit: {
                    print("onCommit")
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.asciiCapable)
            }
            .padding()
            HStack{
                Text("Class:")
                TextField("input search keyword", text: $inputTextTwo) { _ in
                    print("onEditingChanged")
                } onCommit: {
                    print("onCommit")
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.asciiCapable)
            }
            .padding()
        }
        .background(Color.gray)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(inputTextOne: "", inputTextTwo: "")
    }
}
