//
//  BasicsText.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 04/05/24.
//

import SwiftUI

struct BasicsText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .fontWeight(.semibold)
            .kerning(3.0)
        Text("Hello doniscode")
            .font(.largeTitle)
//            .kerning(4)
//            .baselineOffset(10)
            .frame(width: 200,height: 122,alignment: .leading)
            .minimumScaleFactor(0.1)
            .foregroundColor(.red)
            .italic()
            .strikethrough(true,color: Color.black)
//            .underline(true,color:.green)
        
    }
}

#Preview {
    BasicsText()
}
