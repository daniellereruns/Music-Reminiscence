//
//  ContentView.swift
//  Calculator
//
//  Created by Student on 7/22/26.
//

let gradientcolors: [Color] = [.wow,.boring]

import SwiftUI

struct ContentView: View {
    @AppStorage("class1") var savedclass=""
    @State var class1: String = ""
    @State var dataArray: [String] = []
    @AppStorage("isLoggedIn") var isloggedIn=false
    @State var Sugg: String = ""
    //
    //
    init(){
        isloggedIn=false
    }
    var body: some View {
        if isloggedIn{
            
            TabView{
                NavigationStack{
                    Welcomr()
                }
                Welcomr()
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                LoginView()
                    .tabItem{
                        Label("Menu", systemImage: "menucard")
                    }.badge(0)
                NavigationStack{
                    LoginView()
                }}
                .onAppear(){
                    UITabBar.appearance().backgroundColor = .lightGray
                }.tint(.teal)
        }else{
            TabView{
                NavigationStack{
                    Second()
                }
                Second()
            }
        }
    }
}
        
#Preview {
    ContentView()
}
