//
//  5-Icons.swift
//  swiftui-1
//
//  Created by Anugrah on 21/07/24.
//

import SwiftUI

struct __Icons: View {
    var body: some View {
        Image(systemName: "house.fill")
            .resizable()
            .scaledToFit()
//            .font(.system(size: 100))
            .frame(width: 200, height: 200)
            .foregroundStyle(LinearGradient(colors: [.gray,.pink], startPoint: .leading, endPoint: .trailing))
    }
}

#Preview {
    __Icons()
}
