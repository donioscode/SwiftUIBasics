//
//  ScrollViewBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 07/05/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView () {
            LazyVStack {
                ForEach(0..<100 ) { index in
                    ScrollView(.horizontal,showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<100) {index in
                                RoundedRectangle(cornerRadius:  25.0)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .overlay(
                                            Text("5")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .frame(width: 30,height: 30)
                                                .background(.red)
                                                .cornerRadius(15),alignment: .bottomTrailing
                                                 )
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}
