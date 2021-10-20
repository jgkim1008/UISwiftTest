//
//  EnvironmentToggleView.swift
//  Experiment_SwiftUI
//
//  Created by daco daco on 2021/10/20.
//

import SwiftUI

struct ToggleView: View {
    @State private var isStateToggleOn: Bool = false
    
    var body: some View {
            
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(.red)
            
            VStack {
                Text("State Off")
                
                Toggle("State", isOn: $isStateToggleOn)
                    .padding()
            }
        }
        .padding()

        
    }
}

struct EnvironmentToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
