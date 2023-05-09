//
//  SwiftUiGifView.swift
//  Demo-SwiftUI
//
//  Created by Reserveit Support on 6/5/23.
//

import UIKit
import SwiftUI

public struct SwiftUIGIFPlayerView: UIViewRepresentable {
    
    private var gifName: String
    
    public init(gifName: String) {
        self.gifName = gifName
    }
    
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SwiftUIGIFPlayerView>) {
        
    }
    
    public func makeUIView(context: Context) -> UIView {
        return GIFPlayerView(gifName: gifName)
    }
    
}


class GIFPlayerView: UIView {
    
    private let gifImageView = UIImageView()
    
    convenience init(gifName: String) {
        self.init()
        let gif = UIImage.gif(name: gifName)
        gifImageView.image = gif
        gifImageView.contentMode = .scaleAspectFit
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gifImageView.backgroundColor = .clear
        gifImageView.frame = bounds
        self.addSubview(gifImageView)
    }
    
}
