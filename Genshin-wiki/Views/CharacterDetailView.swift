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
        VStack(alignment:.center){
            Image(role+"-card").resizable().scaledToFit()
            Text(model.roles[role]?.name ?? "").bold().font(.title)
        }
        
    }
}

