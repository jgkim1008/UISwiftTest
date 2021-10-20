//
//  EnvironmentToggleView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct EnvironmentToggleView: View {
    @State private var isStateToggleOn: Bool = false
    @EnvironmentObject var model: Model
    
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
                
                Toggle("Environment", isOn: $model.isEnvironmentObjectSwitchOn)
                    .padding()
            }
        }
        .padding()

        
    }
}

struct EnvironmentToggleView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentToggleView()
            .environmentObject(Model())
    }
}
