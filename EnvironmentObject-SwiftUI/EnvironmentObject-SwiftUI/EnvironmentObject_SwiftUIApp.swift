//
//  EnvironmentObject_SwiftUIApp.swift
//  EnvironmentObject-SwiftUI
//
//  Created by Md. Faysal Ahmed on 5/5/23.
//

import SwiftUI

@main
struct EnvironmentObject_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environmentObject(GameSettings())    // MARK: - 1
        }
    }
}
