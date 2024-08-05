//
//  33-TextEditor.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct _3_TextEditor: View {
    @State var textEdit: String = "this is placeholder"
    @State var savedTExt: String = ""
    var body: some View {
        
        NavigationView{
            VStack {
                TextEditor(text: $textEdit)
                    .frame(height: 100)
                    .foregroundColor(.black)
                    .colorMultiply(.purple)
                Button("Button") {
                    savedTExt = textEdit
                    textEdit = ""
                }
                
                Text(savedTExt)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor")
        }
     }
}

#Preview {
    _3_TextEditor()
}
