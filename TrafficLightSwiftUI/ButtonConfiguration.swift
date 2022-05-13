//
//  ButtonConfiguration.swift
//  TrafficLightSwiftUI
//
//  Created by Игорь Варакутин on 13.05.2022.
//

import SwiftUI

struct ButtonConfiguration: View {
    let title: String
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.heavy)
                .frame(width: 150, height: 50)
                .font(.title)
                .background(.cyan)
                .foregroundColor(.white)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
        }
    }
}

struct ButtonConfiguration_Previews: PreviewProvider {
    static var previews: some View {
        ButtonConfiguration(title: "START", action: {})
    }
}
