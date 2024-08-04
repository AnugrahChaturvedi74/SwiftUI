//
//  16-safeArea.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _6_safeArea: View {
    var body: some View {
//        ZStack {
//            // Background color ignoring safe area
//            Color.green
//                .edgesIgnoringSafeArea(.all)
//
//            // Content that respects safe area
//            Text("Hello, World!")
//                .font(.title)
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.yellow)
//        }
        
        ScrollView{
            Text("Title goes here")
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
            
            ForEach(0..<10) { index in
                Rectangle()
                    .cornerRadius(10)
                    .frame(height: 100)
                    .padding(20)
            }
        }    .background(Color.red, ignoresSafeAreaEdges: .all)
    }
}

#Preview {
    _6_safeArea()
}
