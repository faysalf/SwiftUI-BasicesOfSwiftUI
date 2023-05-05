//
//  ScoreView1.swift
//  EnvironmentObject-SwiftUI
//
//  Created by Md. Faysal Ahmed on 5/5/23.
//

import SwiftUI

struct ScoreView1: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        NavigationStack {
            
            Text("Score: \(settings.score)")
                .environmentObject(settings)
                .frame(width: 200, height: 40, alignment: .center)
            
            NavigationLink("Go to Second View", destination: ScoreView2())
            
        }
    }
        
}

struct ScoreView1_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView1()
            .environmentObject(GameSettings())
    }
}
