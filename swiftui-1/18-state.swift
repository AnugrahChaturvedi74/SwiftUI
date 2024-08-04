//
//  18-state.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _8_state: View {
    @State var bgColor: Color  = .green
    @State var myTitle: String = "Title"
    @State var intCount: Int = 0
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea(.all)
            
            VStack{
                Text(myTitle)
                    .padding()
                Text("\(intCount)")
                    .padding()
                HStack(spacing: 20){
                    Button("Button 1") {
                        bgColor = .red
                        myTitle = "Button 1 is pressed"
                        intCount += 1
                    }
                    Button("Button 2") {
                        bgColor = .purple
                        myTitle = "Button 2 is pressed"
                        intCount -= 1
                    }
                }
            }
        }
        
    }
}

#Preview {
    _8_state()
}
