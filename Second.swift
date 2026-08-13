//
//  Second.swift
//  Calculator
//
//  Created by Student on 7/29/26.
//

//.scaledToFit()
//.frame(width: 1000, height: 1000)

import SwiftUI

struct Second: View {
    @AppStorage("isLoggedIn") var isLoggedIn=false
    @AppStorage("username") var savedusername=""
    @AppStorage("password") var savedpassword=""
    @State var username: String = ""
    @State var password: String = ""
    @State var message: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 1000)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("-Login-")
                        .font(.Sekuya())
                        .foregroundStyle(.yellow)
                    TextField("Username", text:$username)
                        .textFieldStyle(.roundedBorder)
                    SecureField("password", text:$password)
                        .textFieldStyle(.roundedBorder)
                    Button("Login"){//verifies user
                        if username == savedusername && password == savedpassword{
                            isLoggedIn=true
                            
                            message="Login Successful!"
                        } else{
                            message="Login Failed"
                        }
                    }.buttonStyle(.borderedProminent)
                    
                    Text(message)
                    NavigationLink("Don't have an account? Sign up here"){
                        FirstJoining()
                        
                    }.foregroundStyle(.yellow)
                    
                }
            }.scrollContentBackground(.hidden)
            
        }
    }
}


#Preview {
    Second()
}
