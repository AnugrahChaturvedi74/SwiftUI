//
//  20-extractSubview.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _0_extractSubview: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            contentLayer
      
        }
    }
    
}

var contentLayer: some View {
    HStack{
        ExtractedView(title: "sumit ", count: 2)
        ExtractedView(title: "Bananas ", count: 3)
        ExtractedView(title: "Apples ", count: 2)
    }
}

struct ExtractedView: View {
    let title: String
    let count: Int
    var body: some View {
        VStack {
            Text(title)
            Text("\(count)")
        }
        .padding()
        .background(Color.red)
        .cornerRadius(10)
    }
}
#Preview {
    _0_extractSubview()
}
