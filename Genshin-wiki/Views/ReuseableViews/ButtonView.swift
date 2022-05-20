//
//  ButtonView.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/19/22.
//

import SwiftUI

struct ButtonView: View {
    
    var text:String
    var body: some View {
        ZStack(alignment: .center){
            Rectangle().frame(width: 336,height: 48, alignment: .center).foregroundColor(.green).cornerRadius(10).clipped().padding(.horizontal)
            Text(text).bold().foregroundColor(.white).font(.system(size: 16))
        }.padding(.bottom)
    }
}
