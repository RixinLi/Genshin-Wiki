//
//  Genshin_wikiApp.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import SwiftUI

@main
struct GenshinWiki: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}
