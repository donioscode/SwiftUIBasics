//
//  SpacerBasics.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 07/05/24.
//

import SwiftUI

struct SpacerBasics: View {
    var body: some View {
        VStack {
            HStack(spacing:0){
    //            Spacer(minLength: 2)
    //                .frame(height: 10)
    //                .background(Color.red)
    //            
    //            Rectangle()
    //                .frame(width: 50,height: 50)
    //            
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.red)
    //            
    //            Rectangle()
    //                .frame(width: 50,height: 50)
    //            
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.red)
    //            
    //            Rectangle()
    //                .frame(width: 50,height: 50)
    //            
    //            Spacer(minLength: 20)
    //                .frame(height: 10)
    //                .background(Color.red)

                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
                
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
        }
        Spacer()
            .background(Color.red)
//            .frame(height: 10)
        Rectangle()
            .frame(height: 55)
            .padding(.horizontal)
    }
}

#Preview {
    SpacerBasics()
}
