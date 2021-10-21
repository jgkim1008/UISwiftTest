//
//  EnvironmentToggleView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ToggleView: View {
    @State private var isStateToggleOn: Bool = false
    @State private var isEnvironmentToggleOn: Bool = false
    @EnvironmentObject var sharedData: Model
    @StateObject var isState = Model()
    var body: some View {
            
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(.red)
            
            VStack {
                if isStateToggleOn {
                    Text("State On ")
                } else{
                    Text("State Off")
                }
                
                Toggle("State", isOn: $isStateToggleOn)
                    .padding()
                Toggle("Environment", isOn: $isEnvironmentToggleOn)
                    .padding()

            }
        }
        .padding()
        .environmentObject(isState)
    }
}

struct EnvironmentToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
