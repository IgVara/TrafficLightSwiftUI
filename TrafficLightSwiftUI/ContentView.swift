//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Игорь Варакутин on 12.05.2022.
//

import SwiftUI

enum CurrentColor {
    case red, yellow, green
}

struct ContentView: View {
    @State private var ButtonAction = "START"
    
    @State private var currentColor = CurrentColor.red
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 15) {
                CircleColor(color: .red, opacity: redLightOpacity)
                CircleColor(color: .yellow, opacity: yellowLightOpacity)
                CircleColor(color: .green, opacity: greenLightOpacity)
                Spacer()
                ButtonConfiguration(title: ButtonAction) {
                    if ButtonAction == "START" {
                        ButtonAction = "NEXT"
                    }
                    ChangeColor()
                }
            }
        }
    }
    
    private func ChangeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentColor {
        case .red:
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
            currentColor = .yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            currentColor = .green
        case .green:
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    

