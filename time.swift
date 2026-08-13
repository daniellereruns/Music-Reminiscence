//
//  time.swift
//  Calculator
//
//  Created by Student on 8/4/26.
//

import SwiftUI
import Foundation

struct time: View {
    @State var okayy: String = ""
    var body: some View{
        VStack{
            Link("- Get Song BPM -", destination: URL(string: "https://songbpm.com")!)
                .fontWeight(.bold)
                .foregroundStyle(.red)
                .fontDesign(.monospaced)
                .foregroundStyle(.black)
                .padding(10)
                .background(Color.green.opacity(0.3))
                .padding(20)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding()
                .frame(width:700, height:70)
            Spacer()
            Text("Minimum 60 BPM")
            TextField("- Enter BPM -", text: $okayy)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundStyle(.brown)
                .frame(width:300, height:70)
            
            let Techno = [ "Often- The Weeknd (136 BPM)", "Drink In My Cup- Kirko Bangz (133 BPM)", "Sour Grapes- LE SSERAFIM (140 BPM)", "Drama - Aespa (131 BPM)", "Ditto- NewJeans (134 BPM)",  "New Jeans- NewJeans (134 BPM)"]
            let low = ["Girls Like You- Maroon 5 (62 BPM)", "Crackbaby- Mitski (64 BPM)", "Liquid Smooth- Mitski (76 BPM)", "I Bet on Losing Dogs- Mitski (82 BPM)", "Opened Once- Jeff Buckley (75 BPM)", "Sleep Talking- Indigo De Souza (84 BPM)", "Wait For You- Future (83 BPM)", "Love Yourz- JCole (83 BPM)", "Fancy- Drake (87 BPM)"]
            let Hip = ["Fireworks- Drake (91 BPM)", "No Role Modelz- JCole (100 BPM)", "Work Out- JCole (93 BPM)", "Right Here- Justin Bieber (92 BPM)", "Moment 4 Life- Nicki Minaj (98 BPM)", "Kiss of Life- Sade (97 BPM)", "Love Me Harder- Arianna Grande (99 BPM)", "Star67- Drake (92 BPM)"]
            let House = ["My Love Mine All Mine- Mitski (114 BPM)", "Nobody- Mitski (117 BPM", "Break From Toronto- PartyNextDoor (117 BPM)", "Dreamin'- PartyNextDoor (115 BPM)", "Loveeeeeee Song- Rihanna (120 BPM)", "Say It- Tory Lanez (107 BPM)", "Bare Wit Me- Teyana Taylor (118 BPM)", "Bartender- T-Pain (105 BPM)", "Everybody Here Wants You- Jeff Buckley (121 BPM)"]
            let Dub = ["Kingston- Faye Webster (142 BPM)", "All Mine- Brent Faiyaz (142 BPM)", "Pony- Ginuwine (142 BPM)", "Privilleged Rappers- Drake (144 BPM)"]
            let High = ["Rich Flex- Drake (160 BPM)", "Sky Walker- Miguel (146 BPM)", "A Mili- Lil Wayne (151 BPM)", "LUV- Tory Lanez (190 BPM)", "Blinding Lights- The Weeknd (171 BPM)", "FE!N- Travis Scott (148 BPM)", "Man Down- Rihanna (156 BPM)", "I Know You- Faye Webster (155 BPM)", "Off to the Races - Lana Del Ray (160 BPM)"]
            
            if let name = Techno.randomElement() {
                // Text(name)
                if let lol = low.randomElement() {
                    // Text(lol)
                    if let okay = Hip.randomElement() {
                        // Text(okay)
                        if let so = House.randomElement() {
                            // Text(okay)
                            if let wow = Dub.randomElement() {
                                if let high = High.randomElement() {
                                    
                                    let sugggint = Int(okayy) ?? 0
                                    
                                    if sugggint >= 60 && sugggint <= 90 {
                                        Text(lol)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                    }else if sugggint >= 91 && sugggint <= 100 {
                                        Text(okay)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                        
                                    }else if sugggint >= 101 && sugggint <= 130 {
                                        Text(so)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                    }else if sugggint >= 131 && sugggint <= 140 {
                                        Text(name)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                    }else if sugggint >= 141 && sugggint <= 145 {
                                        Text(wow)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                    }else if sugggint >= 146 && sugggint <= 200 {
                                        Text(high)
                                            .padding()
                                            .background(Color.yellow.opacity(3).cornerRadius(10))
                                            .padding()
                                        
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
    
    }


#Preview {
    time()
}
