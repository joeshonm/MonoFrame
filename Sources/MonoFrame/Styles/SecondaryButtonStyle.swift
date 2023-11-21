//
//  SecondaryButtonStyle.swift
//
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct SecondaryButtonStyle: ButtonStyle {

    public let size: MonoFrame.ButtonSize
    
    @Environment(\.isEnabled) var isEnabled: Bool

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: size == .normal ? MonoFrame.ButtonHeight.normal : MonoFrame.ButtonHeight.small)
            .padding([.horizontal], 10)
            .background(.white)
            .foregroundStyle(MonoFrame.shared.colors.primary)
            .clipShape(Capsule())
            .overlay(
                Capsule(style: .continuous)
                    .stroke(MonoFrame.shared.colors.primary, style: StrokeStyle(lineWidth: 2))
            )
            .opacity(configuration.isPressed || !isEnabled ? 0.5 : 1.0)


    }
}
