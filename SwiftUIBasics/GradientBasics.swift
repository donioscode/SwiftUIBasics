//
//  GradientBasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct GradientBasics: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(gradient: 
//                               Gradient(colors: [Color.red, Color.blue]),
//                               startPoint: .topTrailing,
//                               endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.yellow,Color.blue]),
//                    center: .topLeading,
//                    startRadius: 15,
//                    endRadius: 300)
                AngularGradient.init(
                    gradient: Gradient(colors: [Color.cyan, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(220))
            )
            .frame(width: 300,height: 200)
    }
}

#Preview {
    GradientBasics()
}
