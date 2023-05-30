//
//  ContentView.swift
//  PageIndicator-PageLoaderView
//
//  Created by Md. Faysal Ahmed on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showProgressView = false
    
    var body: some View {
        VStack {
            
            Text("Hello This is Page Indicator / ProgressView")
                .font(.system(size: 20))
                
            
            Spacer()
            
            Button(action: {
                showProgressView.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now()+3.0) {
                    showProgressView = false
                }

            }) {
                Text("Tap Here")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .cornerRadius(40)
            }
            
            Spacer()
            
            Image(systemName: "photo.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .background(Color.white)
                .foregroundColor(Color.blue)
            
        }
        .padding()
        .blur(radius: showProgressView ? 10:0)
        .overlay {
            if showProgressView {
                ProgressView()
                    .padding()
                    .background(Color.clear)
                    .scaleEffect(1.0, anchor: .center)
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
                    .cornerRadius(5)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
