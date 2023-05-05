//
//  ContentView.swift
//  EnvironmentObject-SwiftUI
//
//  Created by Md. Faysal Ahmed on 5/5/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var settings = GameSettings()
    //@EnvironmentObject var settings: GameSettings // MARK: - 1
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    settings.score += 1
                }) {
                    Text("Increse Score")
                        .padding(20)
                }

                NavigationLink {
                    ScoreView1()
                } label: {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.environmentObject(GameSettings())    // MARK: - 1
    }
}
