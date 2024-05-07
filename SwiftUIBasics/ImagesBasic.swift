//
//  ImagesBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct ImagesBasic: View {
    var body: some View {
        Image("doni")
            .resizable()
//            .renderingMode(.template)
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
//            .scaledToFit()
        
            .frame(width: 300, height: 300)
            .cornerRadius(150)
            .foregroundColor(.blue)
//            .clipShape(Circle())
//            .background(Color.gray)
//            .clipped()
    }
}

#Preview {
    ImagesBasic()
}
