//
//  BackgroundBasicsOverlay.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct BackgroundBasicsOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.purple, Color.yellow]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: .purple,radius: 10,x: 0.0,y: 10)
                
            .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 35,height: 35)
                    .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundColor(.white)
                    )
            .shadow(color: .blue, radius:  10,x: 5,y: 5),alignment:.bottomTrailing)
        )
            
            
       }
}

#Preview {
    BackgroundBasicsOverlay()
}
