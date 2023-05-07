//
//  BView.swift
//  Demo-SwiftUI
//
//  Created by Md. Faysal Ahmed on 7/5/23.
//

import SwiftUI

struct BView: View {
    
    var tg: Int?
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                }
                .padding(10)
                Text("\(tg ?? 0)")
            }
        }
    }
}

struct BView_Previews: PreviewProvider {
    static var previews: some View {
        BView(tg: 10)
    }
}
