//
//  ContentView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem()]) {
            ToggleView()
            ToggleView()
            EnvironmentToggleView()
            EnvironmentToggleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
