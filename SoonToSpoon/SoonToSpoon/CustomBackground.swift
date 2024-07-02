//
//  CustomBackground.swift
//  officeStretches
//
//  Created by Alex  on 12/6/24.
//

import SwiftUI

extension View {
    func gradientBackground(opacity1: Double, opacity2: Double) -> some View {
        self.background(
            LinearGradient(
                gradient: Gradient(colors: [Color.orange.opacity(opacity1), Color.orange.opacity(opacity2)]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}
