//
//  25-popUP.swift
//  swiftui-1
//
//  Created by Anugrah on 03/08/24.
//

import SwiftUI

struct _5_popUP: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button("Button") {
                showSheet.toggle()
            }
        }
//        .sheet(isPresented: $showSheet, content: {
//            secondScreen()
//        })
        .fullScreenCover(isPresented: $showSheet, content: {
            secondScreen()
        })
    }
}


struct secondScreen :  View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.largeTitle)
                    .tint(.white)
            })
        }
    }
}

#Preview {
    _5_popUP()
//    secondScreen()
}
