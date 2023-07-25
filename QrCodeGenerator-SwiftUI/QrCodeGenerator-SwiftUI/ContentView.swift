//
//  ContentView.swift
//  QrCodeGenerator-SwiftUI
//
//  Created by Md. Faysal Ahmed on 25/7/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State var qrCodeText = "Hello! This is Faysal Ahmed here. Above 1.5 years experience of iOS Development with Swift and SwiftUI."
    
    var body: some View {
        VStack {
            var img = UIImage(data: self.getQRCodeDate(text: qrCodeText) ?? Data()) ?? UIImage()

            Image(uiImage: img)
                .resizable()
                .frame(width: 250, height: 250)
        }
        .padding()
    }
    
    func getQRCodeDate(text: String) -> Data? {
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        let data = text.data(using: .ascii, allowLossyConversion: false)
        filter.setValue(data, forKey: "inputMessage")
        guard let ciimage = filter.outputImage else { return nil }
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledCIImage = ciimage.transformed(by: transform)
        let uiimage = UIImage(ciImage: scaledCIImage)
        return uiimage.pngData()!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
