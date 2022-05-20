//
//  HomeView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/19/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        if model.enter {
            CharactersListView()
        }
        else{
            LaunchView()
        }
    }
}
