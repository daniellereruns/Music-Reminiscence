//
//  LoginView.swift
//  Calculator
//
//  Created by Student on 7/29/26.
//

import SwiftUI
import SwiftData

struct LoginView: View {
    
    @AppStorage("username") var savedusername=""
    @State var username: String = ""
    @AppStorage("class1") var savedclass=""
    @State private var textfield1 = UUID()
    @State private var class1 = ""
    @State var Sugg: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Menu")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 1000)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("What are you planning to do today, \(savedusername)?")
                        .background(Color.gray.opacity(0.7))
                        .font(.title3.bold())
                        .fontDesign(.serif)
                        .foregroundStyle(.white)
                        .padding(20)
                        .cornerRadius(10)
                        .padding()
                    NavigationLink("- Favorite Artists - "){
                        Add_class()
                    }.foregroundStyle(.black)
                        .padding(10)
                        .background(Color.gray.opacity(0.6))
                        .padding(20)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .padding()
                        .frame(width:700, height:70)
                    NavigationLink("-  Favorite Songs  -"){
                        Assignment()
                    }.foregroundStyle(.black)
                        .padding(10)
                        .background(Color.gray.opacity(0.6))
                        .padding(20)
                        .background(Color.yellow)
                        .cornerRadius(5)
                        .padding()
                        .frame(width:700, height:70)
                        .padding()
                    NavigationLink("- Favorite Albums -"){
                        Calculate()
                    }.foregroundStyle(.black)
                        .padding(10)
                        .background(Color.gray.opacity(0.6))
                        .padding(20)
                        .background(Color.green)
                        .cornerRadius(5)
                        .padding()
                        .frame(width:700, height:70)
                        .padding()
                    NavigationLink("- Get Suggestions-"){
                        time()
                    }.foregroundStyle(.black)
                        .padding(10)
                        .background(Color.gray.opacity(0.6))
                        .padding(20)
                        .background(Color.pink)
                        .cornerRadius(5)
                        .padding()
                        .frame(width:700, height:70)
                    HStack{
                        Text("Been Connected Musically since: ")
                        Text(Date.now, format:.dateTime)
                    }.padding(20).foregroundStyle(Color.blue)
                        .font(.system(size: 15))
                        .fontWeight(.bold).background(Color.gray)
                        .frame(width:400, height:80)
                    
                }

            }
            
        }
        
    }
}
        
    
    #Preview {
        LoginView()
    }

