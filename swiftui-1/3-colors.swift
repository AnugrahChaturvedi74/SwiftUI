//
//  3-colors.swift
//  swiftui-1
//
//  Created by Anugrah on 17/07/24.
//

import SwiftUI

struct __colors: View {
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 200)
            .cornerRadius(30)
            .foregroundColor(Color(UIColor.red))
            .shadow(color: Color(UIColor.lightGray), radius: 20, x: 10, y: 20)
    }
}

#Preview {
    __colors()
}
