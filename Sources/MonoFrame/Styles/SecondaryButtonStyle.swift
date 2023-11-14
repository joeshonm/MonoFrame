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

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: size == .normal ? MonoFrame.ButtonHeight.normal : MonoFrame.ButtonHeight.small)
            .padding([.horizontal], 10)
            .background(.white)
            .foregroundStyle(MonoFrame.shared.colors.primaryColor)
            .clipShape(Capsule())
            .overlay(
                Capsule(style: .continuous)
                    .stroke(MonoFrame.shared.colors.primaryColor, style: StrokeStyle(lineWidth: 2))
            )


    }
}
