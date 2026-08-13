//
//  Calendar.swift
//  Calculator
//
//  Created by Student on 8/1/26.
//

import SwiftUI
import SwiftData

struct Calculate: View {
    @Environment(\.modelContext) private var context
    @Query private var items:[AlbumItem]
    @State var savedsong = ""
    @Query private var reason:[whyItem]
    @State var because = ""
    @AppStorage("Created Date") var createddate=Date.now.timeIntervalSince1970
    var body: some View {
        ZStack{
            Image("Albumwall")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack{
                TextField("Add Favorite Album", text: $savedsong)
                    .padding()
                    .background(Color.yellow.opacity(0.9).cornerRadius(10))
                TextField("Why is this your favorite Album?", text:$because)
                    .padding()
                    .background(Color.white.opacity(3).cornerRadius(10))
                Button(action:{
                    addItem(itemName: savedsong)
                    addItem(itemName: because)
                    
                }){
                    Text(" -Add Album- ")
                        .padding(10)
                        .background(Color.green.opacity(1), in:RoundedRectangle(cornerRadius: 5))
                }
                List {
                    ForEach(items){ item in
                        HStack{
                            Text(item.songname)
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
                    Text("delete all")
                        .padding(10)
                        .background(Color.yellow.opacity(1), in:RoundedRectangle(cornerRadius: 5)).padding(10)
                        .background(Color.red.opacity(0.2), in:RoundedRectangle(cornerRadius: 5))
                    
                }
                
            }.scrollContentBackground(.hidden)
            .padding()
        }
        }
        func addItem(itemName: String){
            let item=AlbumItem(name: itemName)
            let reason=whyItem(name: itemName)
            context.insert(item)
            context.insert(reason)
        }
        func deleteItem(_ item:AlbumItem){
            context.delete(item)
        }
        func deleteAllItems(){
            do{
                try context.delete(model:AlbumItem.self)
            } catch{
                print("")
            }
        }
    }


@Model
class AlbumItem: Identifiable{
    var id:String
    var songname: String
    
    init(name: String){
        self.id = UUID().uuidString
        self.songname = name
    }
}
@Model
class whyItem: Identifiable{
    var id:String
    var name: String
    
    init(name: String){
        self.id = UUID().uuidString
        self.name = name
    }
        
}
#Preview{
    Calculate()
        .modelContainer(for: AlbumItem.self, inMemory:true)
}


