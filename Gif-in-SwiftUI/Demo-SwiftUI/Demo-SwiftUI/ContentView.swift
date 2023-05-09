//
//  ContentView.swift
//  Demo-SwiftUI
//
//  Created by Reserveit Support on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World! This is a gif player using SwiftUI.")
            VStack{
                SwiftUIGIFPlayerView(gifName: "CompleteReservation")
                    .frame(width: UIScreen.main.bounds.width - 50, height: 350, alignment: .center)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
