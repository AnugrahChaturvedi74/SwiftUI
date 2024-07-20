//
//  4-Gradient.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct __Gradient: View {
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200)
            .cornerRadius(20)
        //Linear Gradieent
//            .foregroundStyle(LinearGradient(colors: [.gray,.pink,], startPoint: .leading, endPoint: .bottom))
//            .shadow(radius: 2)
        
        //Radial Gradient
//            .foregroundStyle(RadialGradient(colors: [.gray,.pink], center: .leading, startRadius: 15 , endRadius: 60))
        
        
        //Anugular Gradient
//            .foregroundStyle(AngularGradient(colors: [.gray,.pink],
//                                             center: .center,
//                                             startAngle: .degrees(10),
//                                             endAngle: .degrees(50)))
    }
}

#Preview {
    __Gradient()
}
