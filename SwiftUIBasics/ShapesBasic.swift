//
//  ShapesBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 04/05/24.
//

import SwiftUI

struct ShapesBasic: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
//            .stroke(Color.orange, style: Strok/*eStyle(lineWidth: 10,lineCap: .round,dash: [10])
            .trim(from: 0.2, to: 1.0)
            .frame(width: 300,height: 200)
        
        Circle()
//            .stroke(Color.blue, lineWidth: 10)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 5,lineCap: .round,dash: [10]))
              
        
        Rectangle()
            .foregroundColor(.green)
            
        
    }
}

#Preview {
    ShapesBasic()
}
