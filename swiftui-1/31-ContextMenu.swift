//
//  31-ContextMenu.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct _1_ContextMenu: View {
    @State var bgColor: Color  = .red
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("@anugrah.29")
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "house.fill")
                })
                .accentColor(.black)
            }.padding(.horizontal)
            
            ZStack {
                Rectangle()
                    .frame(height: 300)
                    .foregroundColor(.gray)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            // Button action here
                        }) {
                            Image(systemName: "house.fill")
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                        .contextMenu(menuItems: {
                            Button(action: {
                                bgColor = .yellow
                            }, label: {
                                Label("Share", systemImage: "flame")
                            })
                            Button(action: {
                                bgColor = .pink
                            }, label: {
                                Label("Report", systemImage: "flame")
                            })
                            Button(action: {
                                bgColor = .green
                            }, label: {
                                Label("Button3", systemImage: "flame")
                            })
                        })
                        
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: 300)
            }
            
        }
        .background(bgColor)
    }
}

#Preview {
    _1_ContextMenu()
}
