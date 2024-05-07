//
//  Paddingbasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct Paddingbasics: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            
            Text("This is a describtion of what we will do on this screen. It is multiple line and we will align the text to the leading edge.")
        }
//        .background(Color.white)
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(
                    color: Color.black.opacity(0.5), radius: 10,
                    x:0.0,y: 10)
        )
        .padding(.horizontal,10)
        
    }
}

#Preview {
    Paddingbasics()
}
