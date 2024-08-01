//
//  12-initandEnums.swift
//  swiftui-1
//
//  Created by Anugrah on 01/08/24.
//

import SwiftUI

struct _2_initandEnums: View {
    
    let backgroundColor: Color
    let title: String
    let count: String
    
    var body: some View {
        VStack{
            Text(title)
                .font(.subheadline)
                .foregroundColor(.white)
      
            Text(count)
        }.frame(width: 150, height: 150, alignment: .center)
            .background(backgroundColor)
            .cornerRadius(20)
    }
}

#Preview {
    HStack{
        _2_initandEnums(backgroundColor: .green, title: "Anugrah", count: "40")
        _2_initandEnums(backgroundColor: .green, title: "Anugrah", count: "40")
    }
}
