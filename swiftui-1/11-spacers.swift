//
//  11-spacers.swift
//  swiftui-1
//
//  Created by Anugrah on 01/08/24.
//

import SwiftUI

struct spacers: View {
//    var body: some View {
//        HStack(spacing: 0, content:{
//            Spacer(minLength: 0)
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Spacer()
//            Rectangle()
//                .foregroundColor(.blue)
//                .frame(width: 100, height: 100)
//            Spacer()
//            Rectangle()
//                .foregroundColor(.blue)
//                .frame(width: 100, height: 100)
//            Spacer(minLength: 0)
//        })
//        .background(Color.red)
//        .padding(.horizontal, 200)
//        
//    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "house")
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "gear")
                    .font(.largeTitle)
            }.padding()
            Spacer()
            HStack{
                Spacer()
                Image(systemName: "house")
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "house")
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "house")
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "house")
                    .font(.largeTitle)
                Spacer()
            }
        }
        .background(Color(.gray))
    }
}

#Preview {
    spacers()
}
