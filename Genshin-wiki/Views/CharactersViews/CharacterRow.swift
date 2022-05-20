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
            
            
            HStack(alignment:.center){
                
                VStack(spacing:10){
                    if role != "" {
                        Image("\(role)-icon").resizable().scaledToFit().frame(width: 100, height: 100, alignment:.leading)
                    }
                    Text(model.roles[role]?.name ?? "").font(Font.custom("Times New Roman", size: 16))
                }.padding(.leading).foregroundColor(.black)
                Image("\(model.roles[role]?.vision ?? "")-element").resizable().scaledToFit()
                Image("\(model.roles[role]?.nation ?? "")-icon").resizable().foregroundColor(Color.pink).scaledToFit()
                
            }.padding(.vertical)
        }.padding()
    }
}
