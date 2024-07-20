//
//  Shapes-2.swift
//  swiftui-1
//
//  Created by Anugrah on 17/07/24.
//

import SwiftUI

struct Shapes_2: View {
    var body: some View {
//        Circle()
////            .foregroundColor(.green)
////            .stroke(Color(.red))
////            .stroke(.green, lineWidth: 10)
////            .stroke(style: StrokeStyle(lineWidth: 20, dash: [20], dashPhase: 50))
//            .trim(from: 0.2, to: 0.9)
////            .fill(Color(.green))
//            .stroke( Color(.purple),style: StrokeStyle(lineWidth: 30))
        
        
        
//        Ellipse()
//            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .bottom)
        
        
//        Capsule(style: .circular)
//            .frame(width: 300, height: 100)
        
        Rectangle()
            .frame(width: 100, height: 100)
            .cornerRadius(10)
           
        
    }
}

#Preview {
    Shapes_2()
}
