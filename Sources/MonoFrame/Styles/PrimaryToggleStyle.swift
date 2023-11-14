//
//  PrimaryButtonStyle.swift
//
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI

@available(iOS 15.0, *)
public struct PrimaryToggleStyle: ToggleStyle {

    public func makeBody(configuration: Configuration) -> some View {
        Toggle(configuration)
            .tint(MonoFrame.shared.colors.primary)
    }
}
