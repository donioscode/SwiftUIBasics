//
//  PopoverSheetsFullScreeen.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 15/05/24.
//

import SwiftUI

struct PopoverSheetsFullScreeen: View {
    @State var showScreen:Bool = false
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    showScreen.toggle()
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                Spacer()
            }
            
            //Method-1 -- TRANSITION
//            ZStack {
//                if showScreen {
//                    NewScreen(showScreen: $showScreen)
//                        .padding(.top,500)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            zIndex(2.0)
           
            
            //Method-2 -- SHEETS
//            .sheet(isPresented: $showScreen, content: {
//                NewScreen()
//            })
            
            //Method-3 -- Animation OFFSET
            NewScreen(showScreen: $showScreen)
                .padding(.top,100)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}


struct NewScreen: View {
    @Binding var showScreen: Bool
//   Method-2  @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
                    //method 1 and 3
                    showScreen.toggle()
//                  Method-2   presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .padding(20)
                })
            }
            
            
        }
    }
}
#Preview {
    PopoverSheetsFullScreeen()
//    NewScreen()
}
