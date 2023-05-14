//
//  AlertView.swift
//  CustomAlert-SwiftUI
//
//  Created by Md. Faysal Ahmed on 14/5/23.
//

import SwiftUI

struct AlertView: View {
    
    @Binding var shown: Bool
    var img: Image
    
    var body: some View {
        VStack {
            
            img.resizable().frame(width: 300, height: 300)
                .padding(5)
            
            Button("Close") {
                shown.toggle()
            }
            .padding(.top, -15)
            .frame(width: 300, height: 30)
            .foregroundColor(.white)
            
            
            
        }
        .frame(width: 310, height: 340)
        .frame(alignment: .leading)
        .background(Color.gray.opacity(0.5))
        .cornerRadius(5)
        
    }
    
}

struct CustomAlert_Previews: PreviewProvider {
    
    static var previews: some View {
        AlertView(shown: .constant(false), img: Image("QrCode"))
            .background(Color.gray)
    }
}
