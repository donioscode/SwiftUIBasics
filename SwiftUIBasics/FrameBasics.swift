//
//  FrameBasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct FrameBasics: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100,alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(Color.red)
            .frame(height: 400)
            .background(Color.yellow)
            .frame(maxHeight: .infinity,alignment:.topLeading)
            .background(Color.green)
    }
}

#Preview {
    FrameBasics()
}
