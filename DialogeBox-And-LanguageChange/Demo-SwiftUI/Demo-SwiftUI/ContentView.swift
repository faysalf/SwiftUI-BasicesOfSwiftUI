//
//  ContentView.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showDialogBox = false
    @State var changedToBangla = false
    
    var body: some View {
        VStack(spacing: 50) {
            Text(changedToBangla ? "ডায়ালগ বক্সে আপনাকে স্বাগতম!":"Welcome to the Dialoge box!")
                .multilineTextAlignment(.center)
                .lineLimit(3)
            Button {
                showDialogBox.toggle()
            } label: {
                Text(changedToBangla ? "ভাষা পরিবর্তন":"Select Language")
            }
            .padding(20)
            .confirmationDialog("Please select your prefered language", isPresented: $showDialogBox, titleVisibility: .visible) {
                Button("English") {
                    changedToBangla = false
                }
                Button("বাংলা") {
                    changedToBangla = true
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


