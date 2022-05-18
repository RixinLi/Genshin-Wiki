//
//  ContentView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                CharacterDetailView(role: "albedo")
                
                
            }.navigationBarHidden(true)
            
        }
        
    }
}

