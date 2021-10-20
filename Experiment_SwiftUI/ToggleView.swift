//
//  ToggleView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ToggleView: View {
    @State private var isStateToggleOn: Bool = false
    @State private var isEnvironmentObjectSwitchOn: Bool = false
    
    var body: some View {
            
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(.red)
            
            VStack {
                if isStateToggleOn {
                    Text("StateToggleOn")
                } else {
                    Text("StateToggleOff")
                }
                
                Toggle("State", isOn: $isStateToggleOn)
                    .padding()
                
                Toggle("notEnvironment", isOn: $isEnvironmentObjectSwitchOn)
                    .padding()
            }
        }
        .padding()

        
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
            .environmentObject(Model())
    }
}
