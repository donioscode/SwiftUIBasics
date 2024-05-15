//
//  SheetsAndFullScreenCover.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 15/05/24.
//

import SwiftUI

struct SheetsAndFullScreenCover: View {
    @State var showSheets: Bool = false
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Button(action: {
                    showSheets.toggle()
                }, label: {
                    Text("Button")
                        .foregroundColor(.green)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                })
                .sheet(isPresented: $showSheets, content: {
                    SecondView()
                })
//                .fullScreenCover(isPresented: $showSheets, content: {
//                    SecondView()
//                })
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
    
struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
            VStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                    
                    
                })
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
}
    
    #Preview {
        SheetsAndFullScreenCover()
    }

