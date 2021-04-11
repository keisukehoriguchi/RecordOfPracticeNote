//
//  Extension.swift
//  RecordOfPracticeNote
//
//  Created by Keisuke Horiguchi on 2021/04/10.
//

import Foundation
import SwiftUI

struct CardViewModifier: ViewModifier {
    let color: Color
    let radius: CGFloat
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}

extension View {
    func card(
        color: Color = Color.gray.opacity(0.4),
        radius: CGFloat = 8) -> some View {
        self.modifier(CardViewModifier(color: color, radius: radius))
    }
}
