//
//  Transition.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 15/05/24.
//

import SwiftUI

struct Transition: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment:.bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Transition()
}
