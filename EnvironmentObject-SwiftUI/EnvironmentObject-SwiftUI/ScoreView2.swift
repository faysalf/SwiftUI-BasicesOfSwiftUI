//
//  ScoreView2.swift
//  EnvironmentObject-SwiftUI
//
//  Created by Md. Faysal Ahmed on 5/5/23.
//

import SwiftUI

struct ScoreView2: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
                .frame(height: 20)
                .padding(20)
            
            Button(action: {
                settings.score += 2
            }) {
                Text("Increse Score by 2")
            }
        }
    }
    
}

struct ScoreView2_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView2()
            .environmentObject(GameSettings())
    }
}
