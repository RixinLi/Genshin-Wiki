//
//  LaunchView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/19/22.
//

import SwiftUI

struct LaunchView: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        ZStack{
            Image("Background").resizable().scaledToFill()
            VStack{
                Spacer()
                Button {
                    model.enter = true
                } label: {
                    ButtonView(text: "Enter Genshin Wiki")
                }

            }
        }
    }
}
