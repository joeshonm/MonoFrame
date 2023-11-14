//
//  MonoFrameSettings.swift
//
//
//  Created by JoeShon Monroe on 11/11/23.
//

import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct MonoFrameSettings {

    public class Colors {
        static var primaryColor: Color = .black
    }

    public var buttonHeight = ButtonHeight()

    public struct ButtonHeight {
        public var normal: CGFloat = 52
        public var small: CGFloat = 44
    }

    public init() {

    }
}
