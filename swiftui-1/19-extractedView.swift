//
//  19-extractedView.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _9_extractedView: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
    }
    
    func buttonPressed(){
        bgColor = .blue
    }
    
    var contentLayer: some View {
        VStack{
            Text("Anugrah")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.callout)
                    .foregroundColor(.white)
                    .frame(width: 100,height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                
            })
        }
    }
}

#Preview {
    _9_extractedView()
}
