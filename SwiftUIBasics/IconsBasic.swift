//
//  IconsBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct IconsBasic: View {
    var body: some View {
    Image(systemName: "plus.circle.fill")
            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 50))
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .foregroundColor(.blue)
            .frame(width: 300,height: 200)
        
    }
}

#Preview {
    IconsBasic()
}
