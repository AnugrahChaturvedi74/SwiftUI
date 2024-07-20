//
//  testview.swift
//  swiftui-1
//
//  Created by Anugrah on 16/07/24.
//

import SwiftUI

struct testview: View {
    var body: some View {
        Text( "this is anugrah and he is IOS developer ".uppercased())
            .font(.system(size: 24, weight: .bold))
//            .fontWeight(.semibold)
//            .bold()
            .underline(true,color: .red)
            .italic()
            .multilineTextAlignment(.center)
            .baselineOffset(10)
            .kerning(1)
            .foregroundColor(.red)
//            .frame(width: 100, height: 100, alignment: .leading)
            .minimumScaleFactor(0.9)
        
    }
}

#Preview {
    testview()
}
