//
//  27-navigationView.swift
//  swiftui-1
//
//  Created by Anugrah on 04/08/24.
//

import SwiftUI

struct _7_navigationView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello World") {
                    myOtherScreen()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading: Image(systemName: "house.fill"),
                                trailing: NavigationLink(destination: myOtherScreen(), label: {
                Image(systemName: "person.fill")
            }).accentColor(.red))
        
        }
        
    }
}

struct myOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack
        {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Second Screnn")
                .toolbar(.hidden)
            
            VStack {
                Button("BackButton") {
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer()
                NavigationLink("Third Screen") {
                    Text("this is third Screen")
                        .navigationTitle("third Screen")
                }
            
            
            }
            
        }
    }
}
#Preview {
    _7_navigationView()
}
