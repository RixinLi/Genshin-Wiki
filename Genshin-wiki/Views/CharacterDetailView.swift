//
//  CharacterDetailView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import SwiftUI

struct CharacterDetailView: View {
    @EnvironmentObject var model:ContentModel
    var role: String
    
    var body: some View {
        ScrollView{
            
            LazyVStack(alignment:.leading){
                Image("\(role)-card").resizable().scaledToFit()
            }
        }.navigationTitle(model.roles[role]?.name ?? "").font(.largeTitle)
    }
}

