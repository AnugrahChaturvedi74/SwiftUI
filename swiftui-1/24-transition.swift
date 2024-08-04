//
//  24-transition.swift
//  swiftui-1
//
//  Created by Anugrah on 03/08/24.
//

import SwiftUI

struct _4_transition: View {
    @State var showView: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                showView.toggle()
            }
            Spacer()
            
            
            if showView {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .frame( height: UIScreen.main.bounds.height / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .opacity(showView ? 1.0: 0.0)
                    .transition(.move(edge: .bottom))
                    .animation(.spring)
            }else{
                
            }
            
       
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    _4_transition()
}
