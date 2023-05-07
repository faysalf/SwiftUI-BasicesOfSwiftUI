//
//  ContentView.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5) { item in
                    let mod = modell(tag: item, txt: "Title\(item)", img: "button")
                    Component(mod: mod)
                }
                .shadow(radius: 20)
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
