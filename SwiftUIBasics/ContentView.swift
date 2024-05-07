//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 04/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .renderingMode(.template)
                .foregroundColor(Color.orange)
               
            Text("Hello, world!")
                .font(.title)
               
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
