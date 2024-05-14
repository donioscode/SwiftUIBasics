//
//  @State.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 13/05/24.
//

import SwiftUI

struct _State: View {
    
    @State var backgroundColor: Color = .green
    @State var mytitle: String = "MyTitle"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            
            VStack(spacing: 20){
                Text(mytitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button1") {
                        mytitle = "hello first button pressed"
                        backgroundColor = .yellow
                        count += 1
                    }
                    Button("Button2") {
                        mytitle = "hello second button pressed"
                        backgroundColor = .purple
                        count -= 1
                    }
                }
            }
        }
        .foregroundColor(Color.white)
    }
}

#Preview {
    _State()
}
