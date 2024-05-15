//
//  Animation.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 14/05/24.
//

import SwiftUI

struct Animation: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0 ))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    Animation()
}
