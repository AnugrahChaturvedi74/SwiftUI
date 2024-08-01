//
//  13-forEach.swift
//  swiftui-1
//
//  Created by Anugrah on 01/08/24.
//

import SwiftUI

struct _3_forEach: View {
    var body: some View {
        
        let data: [String] = ["hi", "hello", "hey everyone"]
        
//        ForEach(0..<10) { index in
//            HStack {
//                Circle()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(index % 2 == 0 ? .blue : .yellow)
//                Text("index is : \(index)")
//            }
//        }
        
        
        
        ForEach(data.indices) { index in
                Text("\(data[index])")
        }
    }
}

#Preview {
    _3_forEach()
}
