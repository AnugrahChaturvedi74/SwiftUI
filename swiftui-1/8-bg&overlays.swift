//
//  8-bg&overlays.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct __bg_overlays: View {
    var body: some View {
       
//            .background(
////                Color.red
//                LinearGradient(colors: [.gray,.pink], startPoint: .topLeading, endPoint: .bottomTrailing)
//                    .frame(width: 200, height: 200)
//            )
//            .frame(width: 250, height: 250, alignment: .center)
//            .background(Circle()
//                .foregroundColor(.blue)
//            )
        
//        Circle()
//            .frame(width: 100, height: 100, alignment: .center)
//            .foregroundColor(.pink)
//            .overlay(
//                Text("0")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                
//            )
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
                Circle()
                    .foregroundStyle(LinearGradient(colors: [.pink,.green], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.blue)
                            .overlay(
                                Text("15")
                                    .foregroundColor(.white)
                                    .fontWeight(.light)
                            )
                        ,
                        alignment: .bottomTrailing
                    )
            )
            .shadow(color: .gray, radius: 5, x: 2, y: 4)
        
    }
}

#Preview {
    __bg_overlays()
}
