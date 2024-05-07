//
//  HVZStacksBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 06/05/24.
//

import SwiftUI

struct HVZStacksBasic: View {
    var body: some View {
        VStack( spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100,height: 100)
                Text("5")
                    .font(.title)
                    .foregroundColor(.blue)
            }
            Text("5")
                .font(.title)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .background(
                Circle()
                    .frame(width: 100,height: 100)
                )
        }
    }
}

#Preview {
    HVZStacksBasic()
}
