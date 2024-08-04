//
//  21-Binding.swift
//  swiftui-1
//
//  Created by Anugrah on 03/08/24.
//

import SwiftUI

struct _1_Binding: View {
    @State var bgColor: Color = .gray
    @State var anugrahTExt: String = "thus is anugrah"
    var body: some View {
        ZStack {
        bgColor
           
            VStack {
                Text(anugrahTExt)
                buttonView(bgColor: $bgColor, anugrahTExt: $anugrahTExt)
            }
        }
    }
}

struct buttonView: View {
    
    @Binding var bgColor: Color
    @Binding var anugrahTExt: String
    var body: some View {
        
        Button(action: {
            bgColor = .green
            anugrahTExt = "this is nayan text"
        }, label: {
            Text("MyButton")
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .font(.largeTitle)
                .foregroundStyle(Color.black)
                
        })
    }
}


#Preview {
    _1_Binding()
}
