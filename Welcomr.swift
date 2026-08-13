//
//  Welcomr.swift
//  Calculator
//
//  Created by Student on 7/28/26.
//

import SwiftUI

extension Font{
    static func Sekuya() -> Font {
        return Font.custom("Sekuya-Regular", size:30)
    }
}


struct Welcomr: View {
    var body: some View {
        @AppStorage("username") var savedusername=""
        @State var username: String = ""
        ZStack{
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 1000)
                .edgesIgnoringSafeArea(.all)
            
            Image("Welcome")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 5, height: 1000)
                .edgesIgnoringSafeArea(.all)
            
            VStack
            {
                Text("Welcome, \(savedusername)!")
                    .font(.Sekuya())
                    .foregroundStyle(Color.white)
                    .padding(25)
                    .background(Color.gray.opacity(0.6), in:RoundedRectangle(cornerRadius: 5))
               
                    
                Text("To Music Reminiscence")
                    .font(.system(size: 20))
                    .fontDesign(.monospaced)
                    .padding(10)
                    .background(Color.yellow, in:RoundedRectangle(cornerRadius: 5))
                
            }
            
        }
        
        
    }
}
    
    #Preview {
        ContentView()
    }
