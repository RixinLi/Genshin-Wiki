//
//  CharacterRow.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/18/22.
//

import SwiftUI

struct CharacterRow: View {
    @EnvironmentObject var model:ContentModel
    var role:String
    
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(.white).cornerRadius(10)
                .shadow(radius: 5)
            HStack(spacing: 30){
                
                VStack(spacing:10){
                    Image("\(role)-icon").resizable().scaledToFit().frame(width: 100, height: 100, alignment:.leading)
                    Text(model.roles[role]?.name ?? "").font(.subheadline)
                }.padding(.leading)
                
                VStack(alignment:.leading, spacing: 10){
                    Text("Vision : "+(model.roles[role]?.vision ?? ""))
                        .font(.headline)
                    
                    Text("Nation : "+(model.roles[role]?.nation ?? "")).font(.headline)
                }.padding()
                
            }.padding(.vertical)
        }.padding()
    }
}
