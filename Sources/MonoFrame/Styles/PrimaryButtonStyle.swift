//
//  PrimaryButtonStyle.swift
//
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct PrimaryButtonStyle: ButtonStyle {

    public let size: MonoFrame.ButtonSize
    
    @Environment(\.isEnabled) var isEnabled: Bool

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: size == .normal ? MonoFrame.ButtonHeight.normal : MonoFrame.ButtonHeight.small)
            .padding([.horizontal], 10)
            .background(MonoFrame.shared.colors.primary)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .overlay(
                Capsule(style: .continuous)
                    .stroke(MonoFrame.shared.colors.primary, style: StrokeStyle(lineWidth: 1))
            )
            .opacity(configuration.isPressed || !isEnabled ? 0.5 : 1.0)
    }
}
