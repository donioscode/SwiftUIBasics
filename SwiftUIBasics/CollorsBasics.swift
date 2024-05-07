//
//  CollorsBasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 04/05/24.
//

import SwiftUI

struct CollorsBasics: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color((#colorLiteral(red: 1, green: 0.8386140466, blue: 0.4518887401, alpha: 1)))
            )
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//            .shadow(color: Color((#colorLiteral(red: 1, green: 0.8386140466, blue: 0.4518887401, alpha: 1))).opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:-20 ,y: 20)
        
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    CollorsBasics()
}
