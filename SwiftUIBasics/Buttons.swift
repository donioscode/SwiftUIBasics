//
//  Buttons.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 13/05/24.
//

import SwiftUI

struct Buttons: View {
    
   @State var title = "Hello tittle"
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!"){
                self.title = "First title"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Second Btn Pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 20)
                    )
            }
            
            Button {
                self.title = "Third Btn Pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 100,height: 100)
                    .overlay(Image(systemName: "heart.fill"))
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .shadow(radius: 20)
            }
            Button {
                self.title = "#4 way"
            } label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal)
                    .background(
                    Capsule()
                        .stroke(Color.gray,lineWidth: 2.0)
                    )
            }

            
            Button("Hello", systemImage: "heart.fill") {
                self.title = "#5 press sfefe"
            }


        }
    }
}

#Preview {
    Buttons()
}
