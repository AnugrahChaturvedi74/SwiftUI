//
//  6-Image.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct __Image: View {
    var body: some View {
        Image("map_markericon", bundle: nil)
            .renderingMode(.template)
            .resizable()
            .frame(width: 100, height: 100)
            .scaledToFill()
            .foregroundColor(.brown)
        }
}

#Preview {
    __Image()
}
