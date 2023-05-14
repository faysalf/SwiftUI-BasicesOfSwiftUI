//
//  ContentView.swift
//  CustomAlert-SwiftUI
//
//  Created by Md. Faysal Ahmed on 14/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShownScanner = false
    
    var body: some View {
        VStack {
            VStack(spacing: 50) {
                // Avoid these, Here is some design for bluring
                VStack (spacing: 40){
                    HStack(spacing: 15) {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("Hello! This is Faysal")
                            .font(.system(size: 30))
                    }
                    .padding()
                    .background(.white)
                    .shadow(radius: 10)
                    
                    Image(systemName: "photo.fill")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.blue)
                }
            
                Button {
                    isShownScanner.toggle()
                } label: {
                    Text("Tap Here")
                        .font(.system(size: 30))

                }
                .padding(10)
            }
            .blur(radius: isShownScanner ? 10:0)

        }
        .overlay {
            if isShownScanner {
                AlertView(shown: $isShownScanner, img: Image("QrCode"))
                    .background(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
