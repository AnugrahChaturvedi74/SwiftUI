//
//  9-stacks.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct __stacks: View {
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
        
        
//        HStack(alignment: .top, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
//        
//        
//        VStack(alignment: .center, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
//        
        
        ZStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 300, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack{
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                HStack(spacing: 0, content: {
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.yellow)
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                }).background(Color.white)
            }
                
        }
    }
}

#Preview {
    __stacks()
}
