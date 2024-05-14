//
//  TernaryOperation.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 14/05/24.
//

import SwiftUI

struct TernaryOperation: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "Hello Title" : "Tahks Title")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0.0)
                .fill(isStartingState ? Color.blue : Color.red)
                .frame(width: isStartingState ? 200 : 50,height: isStartingState ? 50 : 100)
        }
    }
}

#Preview {
    TernaryOperation()
}
