//
//  32-TextField.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct _2_TextField: View {
    @State var username: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("Username", text: $username)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .textFieldStyle(.roundedBorder)
                    
                   
                Button(action: {
                    if validateText(text: username) {
                        dataArray.append(username)
                        username = ""
                    }
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(idealWidth: 100, maxWidth: .infinity )
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .background(validateText(text: username) ? Color.blue.opacity(3.0) : Color.gray)
                        .cornerRadius(10)
                    
                    
                })
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                
                }
                Spacer()
            }
            .padding()
            .navigationTitle("this is Form Page")
        
        }
    
    }
    
    func validateText(text: String) -> Bool {
        if username.count > 3 {
            return true
        }
        else{
            return false
        }
        return false
    }
}

#Preview {
    _2_TextField()
}
