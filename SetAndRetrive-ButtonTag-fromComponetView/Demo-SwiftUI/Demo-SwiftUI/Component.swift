//
//  Component.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 7/5/23.
//

import SwiftUI

struct Component: View {
    
    var mod: modell?
    @State private var showModel = false

    var body: some View {
        VStack {
            Text(mod?.txt ?? "")
            Button(action: {
                showModel.toggle()
            }) {
                Image(mod?.img ?? "")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            .tag(mod?.tag)
            .fullScreenCover(isPresented: $showModel) {
                BView(tg: mod?.tag)
                    
            }
        }
        
    }
}

struct Component_Previews: PreviewProvider {
    static var previews: some View {
        Component(mod: modell(tag: 0, txt: "Hello Text", img: "button"))
    }
}


struct modell {
    var tag: Int?
    var txt: String?
    var img: String?
    
    init(tag: Int? = nil, txt: String? = nil, img: String? = nil) {
        self.tag = tag
        self.txt = txt
        self.img = img
    }
}
