//
//  AnimationTiming.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 15/05/24.
//

import SwiftUI

struct AnimationTiming: View {
    @State var isAnimating : Bool = false
    let timing: Double = 1.0
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width:isAnimating ? 350 : 100,
                    height: 100 )
                .shadow(radius: 10)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
//                .animation(.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width:isAnimating ? 350 : 100,
//                    height:  100 )
//                .animation(.easeOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width:isAnimating ? 350 : 100,
//                    height: 100 )
//                .animation(.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width:isAnimating ? 350 : 100,
//                    height: 100 )
//                .animation(.easeInOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTiming()
}
