//
//  SwiftUI_demoApp.swift
//  SwiftUI-demo
//
//  Created by Md. Faysal Ahmed on 1/4/23.
//

import SwiftUI

@main
struct SwiftUI_demoApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
