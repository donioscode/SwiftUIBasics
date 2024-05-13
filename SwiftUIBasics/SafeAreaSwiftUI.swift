//
//  SafeAreaSwiftUI.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 13/05/24.
//

import SwiftUI

struct SafeAreaSwiftUI: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Safe Area Hello uskiy")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                ForEach(0..<20) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
                
            }
            
        }
        .background(
            Color.blue
                .ignoresSafeArea(edges: .all)
        )
    }
}

#Preview {
    SafeAreaSwiftUI()
}
