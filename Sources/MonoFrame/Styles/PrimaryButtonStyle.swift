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

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: size == .normal ? MonoFrame.ButtonHeight.normal : MonoFrame.ButtonHeight.small)
            .padding([.horizontal], 10)
            .background(MonoFrame.shared.colors.primaryColor)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .overlay(
                Capsule(style: .continuous)
                    .stroke(MonoFrame.shared.colors.primaryColor, style: StrokeStyle(lineWidth: 1))
            )


    }
}
