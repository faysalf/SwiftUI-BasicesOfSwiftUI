//
//  ContentView.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showVC = false
    
    var body: some View {
        VStack(spacing: 50) {
            ZStack {
                Color.clear.edgesIgnoringSafeArea(.all)
                
                NavigationView {
                    VStack {
                        NavigationLink(destination: WrapVC(), isActive: $showVC) {
                            Text("Go to VC")
                        }
                        .ignoresSafeArea()
                    }
                    .navigationTitle("SwiftUI View")

                }
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarHidden(true)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


