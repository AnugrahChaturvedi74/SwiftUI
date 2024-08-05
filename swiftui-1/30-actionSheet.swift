//
//  30-actionSheet.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showAlert: Bool = false
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button("Click Me") {
                showAlert.toggle()
            }
            .confirmationDialog("My Alert", isPresented: $showAlert) {
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("This is my Message")
            }
        }
    }
}

#Preview {
    ActionSheetView()
}
