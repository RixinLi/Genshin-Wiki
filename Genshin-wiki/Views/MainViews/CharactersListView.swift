//
//  ContentView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import SwiftUI

struct CharactersListView: View {
    @EnvironmentObject var model:ContentModel
    @State var CharactersArray:[String] = Constants.Characters
    
    var body: some View {
        NavigationView{
            VStack{
                // Character icons and NavigationLink to the character detail view
                ScrollView{
                    LazyVStack(alignment:.leading){
                        
                        Text("Characters").padding([.top, .leading, .bottom]).font(.largeTitle)
                        
                        // make button to sorted and let the user choose the attribute of the character
                        ForEach(CharactersArray,id:\.self){ role in
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

