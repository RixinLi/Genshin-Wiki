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
                
                // Character icons and NavigationLink to the character detail view
                ScrollView{
                    
                    LazyVStack(alignment:.leading){
                        
                        Text("Characters").padding(.leading).font(.largeTitle)
                        
                        ForEach(Constants.Characters,id:\.self){ role in
                            NavigationLink {
                                CharacterDetailView(role: role)
                            } label: {
                                CharacterRow(role: role)
                            }.navigationTitle("Characters")

                        }
                        
                    }
                    
                }
            }.navigationBarHidden(true)
            
        }
    }
}

