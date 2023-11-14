//
//  PrimaryButtonStyle.swift
//
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct CheckboxToggleStyle: ToggleStyle {

    public func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Image(systemName: configuration.isOn
                      ? "checkmark.circle.fill"
                      : "circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .tint(configuration.isOn ? MonoFrame.shared.colors.primary : Color(uiColor: .systemGray5))
                
                configuration.label
                    .tint(.primary)
            }
        }
        .buttonStyle(.borderless)
    }
}
