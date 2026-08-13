//
//  newaApp.swift
//  newa
//
//  Created by Student on 8/13/26.
//

import SwiftUI

@main
struct newaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [DataItem.self, SongItem.self, AlbumItem.self])
    }
}
