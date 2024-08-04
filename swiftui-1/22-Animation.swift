//
//  22-Animation.swift
//  swiftui-1
//
//  Created by Anugrah on 03/08/24.
//

import SwiftUI

struct _2_Animation: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerSize: isAnimated ? CGSize(width: 10, height: 10) : CGSize(width: 100, height: 100))
                .frame(width: isAnimated ? 100: 200,
                       height: isAnimated ? 100: 200)
                .foregroundColor(isAnimated ? .blue: .red)
                .rotationEffect(Angle(degrees: isAnimated ? -360: 0))
                .offset(y: isAnimated ? 0: 300)
            Spacer()
            
        }
    }
}

#Preview {
    _2_Animation()
}
