//
//  InitializerBasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 07/05/24.
//

import SwiftUI

struct InitializerBasics: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruits) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.white)
            Text(title)
                .foregroundColor(.white)
                .font(.largeTitle)
                .font(.headline)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
//        .shadow(color: .red, 
//                radius: 5,
//                x: 0.0, y: 10)
    }
}

#Preview {
    HStack {
        InitializerBasics(count: 11, fruit: .apple)
        InitializerBasics(count: 55, fruit: .orange)
    }
}
