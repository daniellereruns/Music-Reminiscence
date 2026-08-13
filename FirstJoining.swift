//
//  FirstJoining.swift
//  Calculator
//
//  Created by Student on 7/22/26.
//

import SwiftUI


struct FirstJoining: View {
    @AppStorage("isLoggedIn") var isLoggedIn=false
    @AppStorage("username") var savedusername=""
    @AppStorage("password") var savedpassword=""
    @State var username: String = ""
    @State var password: String = ""
    @State var message: String = ""
    var body: some View {
        VStack{
            Text("Create Account")
                .font(.headline)
            
            TextField("Username", text:$username)
                .textFieldStyle(.roundedBorder)
            SecureField("password", text:$password)
                .textFieldStyle(.roundedBorder)
            Button("Sign Up"){
                savedusername=username
                savedpassword=password
                isLoggedIn=true
                message="Account Created!"
                print(message)
                
            }.buttonStyle(.borderedProminent)
            HStack{
                NavigationLink{
                    Welcomr()
                } label:{
                }
            }
        }
    }
}
        #Preview {
            FirstJoining()
        }
