//
//  15-Grids.swift
//  swiftui-1
//
//  Created by Anugrah on 02/08/24.
//

import SwiftUI

struct _5_Grids: View {
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
        
    ]
    
    var body: some View {
        
        ScrollView{
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: 100)
            
            
            LazyVGrid(columns: column,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [
                        .sectionHeaders
                      ],
                      content: {
                
                
                Section(header: Text("Section1")
                    .frame(height: 70, alignment: .leading)
                    .font(.largeTitle)
                    .foregroundStyle(Color.red)
                    .padding()
                   
                ) {
                    ForEach(0..<45) { index in
                        Rectangle()
                            .frame( height: 150)
                    }
                }
                Section(header: Text("Section2")
                    .frame(height: 70, alignment: .leading)
                    .font(.largeTitle)
                    .foregroundStyle(Color.red)
                    .padding()
                   
                ) {
                    ForEach(0..<45) { index in
                        Rectangle()
                            .frame( height: 150)
                    }
                }
            
            })
            
        }
    }
}

#Preview {
    _5_Grids()
}
