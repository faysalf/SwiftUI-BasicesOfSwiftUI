//
//  ContentView.swift
//  SwiftUI-DataTransefer-Env
//
//  Created by Md. Faysal Ahmed on 9/4/23.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var arr: TranseferPage
    
    var body: some View {
        VStack {
            Label("\(arr.totalCount)", systemImage: "photo")
            
            Section {
                Button("Add") {
                    print("ok")
                    arr.addData(val: arr.arr.last! + 5)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TranseferPage())
    }
}
