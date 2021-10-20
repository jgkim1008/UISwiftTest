//
//  Experiment_SwiftUIApp.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

@main
struct Experiment_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
