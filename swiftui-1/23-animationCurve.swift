//
//  23-animationCurve.swift
//  swiftui-1
//
//  Created by Anugrah on 03/08/24.
//

import SwiftUI

struct _3_animationCurve: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.yellow)
                .animation(Animation.linear(duration: 10))
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.yellow)
                .animation(Animation.easeIn(duration: 10))
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.yellow)
                .animation(Animation.easeInOut(duration: 10))
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.yellow)
                .animation(Animation.easeOut(duration: 10))
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .foregroundColor(.yellow)
                .animation(Animation.spring)
        }
    }
}

#Preview {
    _3_animationCurve()
}
