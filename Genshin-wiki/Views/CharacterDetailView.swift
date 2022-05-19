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
                if role != "" {
                    Image("\(role)-card").resizable().scaledToFit()
                }
                let url = URL(string: Constants.RoleDemonstration[role] ?? "")
                if url != nil {
                    HStack{
                        Text("\(role) role demonstartion : ").bold().lineLimit(1)
                        Spacer()
                        Link("bilibili", destination: url!)
                    }
                }
            }.padding(.horizontal)
            
        }.navigationTitle(model.roles[role]?.name ?? "")
    }
}

