//
//  29-Alert.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct _9_Alert: View {
    @State var bgColor: Color = .yellow
    @State var showAlert: Bool = false
    var body: some View {
        ZStack {
            bgColor
            
            Button("Ciclk") {
                showAlert.toggle()
            }.alert(isPresented: $showAlert, content: {
                //            Alert(title: Text("THis is title"), message: Text(""))
                getAlert()
            })
        }
        
        
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text("Logout"),
                     message: Text("Are you sure want to logout"),
                     primaryButton: .default(Text("Delete"), action: {
            bgColor = .red
        }),
                     secondaryButton: .destructive(Text("Cancel"), action: {
            bgColor = .yellow
        }))
    }
}

#Preview {
    _9_Alert()
}
