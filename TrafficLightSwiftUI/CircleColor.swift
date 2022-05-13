//
//  CircleColor.swift
//  TrafficLightSwiftUI
//
//  Created by Игорь Варакутин on 13.05.2022.
//

import SwiftUI

struct CircleColor: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleColor_Previews: PreviewProvider {
    static var previews: some View {
        CircleColor(color: .green, opacity: 1)
    }
}
