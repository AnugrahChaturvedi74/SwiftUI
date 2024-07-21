//
//  10-padding.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct _0_padding: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello World")
                .font(.largeTitle)
                
            Text("this is descroption of the title and it helps to learn multiline concept easily rkhskjdkjsdkjshdkjhfdskjfdskjfhksjdhfkjsdhfkjsdhfkjsdkjfhskjdhfkjshfkjsdhfkjsdhksdkjksjd")
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                
        }
        .padding()

        .background(
            Color.white
            .shadow(radius: 10)
            
        )
     
    
    }
}

#Preview {
    _0_padding()
}
