//
//  17-buttons.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _7_buttons: View {
    @State var titleText = "this is title Text"
    var body: some View {
        
        VStack{
            Text(titleText)
            Button("add") {
                self.titleText = "this is new title text"
            }.tint(.red)
            
          
            
            Button(action: {
                print("House is tapped")
            }, label: {
//                Circle()
//                    .frame(width: 100, height: 100)
                Image(systemName: "house.fill")
                    .font(.largeTitle)
                    .tint(.red)
            })
            
            
            
            Button(action: {
                print("this is custom button")
            }, label: {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .overlay {
                        Text("Press me")
                            .font(.caption)
                            .foregroundStyle(Color.red)
                    
                    }
            })
        }
    }
}

#Preview {
    _7_buttons()
}
