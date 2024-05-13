//
//  LayzGrid.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 13/05/24.
//

import SwiftUI

struct LayzGrid: View {
    var body: some View {
        let colums: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            
        ]
        
        ScrollView(){
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            
            LazyVGrid(
                columns:colums,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1 ")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                            
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2 ")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.red)
                        .padding()
                            
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                                .foregroundColor(.yellow)
                                
                        }
                    }
                    
                })
        }
    }
}

#Preview {
    LayzGrid()
}
