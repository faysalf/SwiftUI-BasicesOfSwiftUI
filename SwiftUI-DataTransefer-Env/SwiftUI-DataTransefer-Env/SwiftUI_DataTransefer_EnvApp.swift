//
//  SwiftUI_DataTransefer_EnvApp.swift
//  SwiftUI-DataTransefer-Env
//
//  Created by Md. Faysal Ahmed on 9/4/23.
//

import SwiftUI

@main
struct SwiftUI_DataTransefer_EnvApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TranseferPage())
        }
    }
}
