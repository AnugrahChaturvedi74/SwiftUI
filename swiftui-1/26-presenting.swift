//
//  26-presenting.swift
//  swiftui-1
//
//  Created by Anugrah on 04/08/24.
//

import SwiftUI

struct _6_presenting: View {
    
    @State var showNewScreeen: Bool = false
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button(action: {
                    showNewScreeen.toggle()
                }, label: {
                    Text("Button")
                })
            }
            // MEHTHOD - 1
//            .sheet(isPresented: $showNewScreeen, content: {
//                 second()
//            })
            
            // MEthod - 2
            if showNewScreeen {
                second(showNewScreen: $showNewScreeen)
                    .transition(.move(edge: .bottom))
                    .animation(.spring)
            }
            
            //Method - 3
//            AnimationOFFset
            second(showNewScreen: $showNewScreeen)
                .padding(.top)
                .offset(y: showNewScreeen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring)
            
            
        }
    }
}

struct second: View  {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack {
            Color.purple
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image(systemName: "house.fill")
                    .font(.largeTitle)
                
                Button("Dismiss") {
//                    presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                }
            }
        }
    }
}

#Preview {
//    second()
    _6_presenting()
}
