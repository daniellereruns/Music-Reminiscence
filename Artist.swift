//
//  Add class.swift
//  Calculator
//
//  Created by Student on 8/1/26.
//

import SwiftUI
import SwiftData
import Foundation

struct Add_class: View {
    @Environment(\.modelContext) private var context
    @Query private var items:[DataItem]
    @Query private var reason:[reasonItem]
    @State var savedArtist = ""
    @State var because = ""
    @AppStorage("Created Date") var createddate=Date.now.timeIntervalSince1970
    var body: some View {
        ZStack{
            Image("Albumwall")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack{
                TextField("Add Favorite Artist", text: $savedArtist)
                    .padding()
                    .background(Color.pink.opacity(0.9).cornerRadius(10))
                
                TextField("Why is this your favorite artist?", text:$because)
                    .padding()
                    .background(Color.white.opacity(3).cornerRadius(10))
                Button(action:{
                    addItem(itemName: savedArtist)
                    addItem(itemName: because)
                    
                }){
                    Text("- Add Artist - ")
                        .padding(10)
                        .background(Color.green, in:RoundedRectangle(cornerRadius: 5))
                        .padding(10)
                        .background(Color.pink.opacity(0.5), in:RoundedRectangle(cornerRadius: 5))
                }
                List {
                    
                    ForEach(items){ item in
                        HStack{
                            Text(item.name)
                            Text(Date(timeIntervalSince1970: createddate),style:.date)
                                .background(Color.gray.opacity(0.3))
                        }
                    }.onDelete{ indexes in
                        for index in indexes{
                            deleteItem(items[index])
                        }
                    }
                }
                Button(action:{
                    deleteAllItems()
                }){
                    Text(" -delete all- ")
                        .padding(10)
                        .background(Color.yellow, in:RoundedRectangle(cornerRadius: 5))
                        .padding(10)
                        .background(Color.red.opacity(0.5), in:RoundedRectangle(cornerRadius: 5))
                }
                
            }.scrollContentBackground(.hidden)
                .padding()
        }
        
    }
    func addItem(itemName: String){
        let item=DataItem(name: itemName)
        let reason=reasonItem(name: itemName)
        context.insert(item)
        context.insert(reason)
    }
    func deleteItem(_ item:DataItem){
        context.delete(item)
    }
        func deleteAllItems(){
            do{
                try context.delete(model:DataItem.self)
            } catch{
                print("")
            }
        }
    }
    
    @Model
    class DataItem: Identifiable{
        var id:String
        var name: String
        
        init(name: String){
            self.id = UUID().uuidString
            self.name = name
        }
        
    }
    @Model
    class reasonItem: Identifiable{
        var id:String
        var name: String
        
        init(name: String){
            self.id = UUID().uuidString
            self.name = name
        }
        
    }
    #Preview{
        Add_class()
            .modelContainer(for: DataItem.self, inMemory:true)
    }

