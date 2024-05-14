//
//  @BindingAndSubView.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 14/05/24.
//

import SwiftUI

struct _BindingAndSubView: View {
    @State var title: String = "HelloTitle"
    @State var buttonColor: Color = Color.purple
    @State var backgroundColor: Color = Color.red
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            VStack{
                Text(title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    
                ButtonView(title: $title, buttonColor: $buttonColor, backgroundColor: $backgroundColor)
            }
        }
    }
}

#Preview {
    _BindingAndSubView()
}

struct ButtonView: View {
    @Binding var title: String
    @Binding var buttonColor: Color
    @Binding var backgroundColor: Color
    var body: some View {
        Button(action: {
            backgroundColor = Color.blue
            buttonColor = Color.orange
            title = "NEw Title"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
            
        })
    }
}
