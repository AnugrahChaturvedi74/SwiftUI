//
//  14-scrollView.swift
//  swiftui-1
//
//  Created by Anugrah on 01/08/24.
//

import SwiftUI

struct _4_scrollView: View {
    
    var body: some View {
        
        
//        ScrollView(.horizontal,showsIndicators: false,content: {
//            HStack {
//                ForEach(0..<10) { index in
//                    Rectangle()
//                        .frame(width: 100, height: 200)
//                        .foregroundColor(.gray)
//                }
//            }
//        })
        
        
        ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .frame(width: 200,height: 100)
                                    .cornerRadius(10)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 10)
                            }
                        }
                    }
                }
                    
            }.padding()
        })
    }
}
#Preview {
    _4_scrollView()
}
