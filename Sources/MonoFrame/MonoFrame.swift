// MonoFrame - UI Kit for SwiftUI
// https://docs.swift.org/swift-book
import SwiftUI

@available(iOS 15.0, *)
@available(macOS 10.15, *)
public class MonoFrame: ObservableObject {
    
    // MARK: Colors
    @Published public var colors = MonoFrameColors()

    public struct MonoFrameColors {
        public var primary: Color = .black

        public init() {}
    }
    
    // MARK: Button Styles
    var buttonStyles = ButtonStyles()

    public struct ButtonHeight {
        static var normal: CGFloat = 52
        static var small: CGFloat = 44
    }

    public enum ButtonSize {
        case normal
        case small
    }

    public struct ButtonStyles {
        public static func primary(_ size: MonoFrame.ButtonSize = .normal) -> PrimaryButtonStyle {
            return PrimaryButtonStyle(size: size)
        }

        public static func secondary(_ size: MonoFrame.ButtonSize = .normal) -> SecondaryButtonStyle {
            return SecondaryButtonStyle(size: size)
        }
    }
    
    // MARK: Toggle Styles
    var toggleStyles = ToggleStyles()
    
    public struct ToggleStyles {
        public static func primary() -> PrimaryToggleStyle {
            return PrimaryToggleStyle()
        }
        public static func checkbox() -> CheckboxToggleStyle {
            return CheckboxToggleStyle()
        }
    }

    public static let shared: MonoFrame = MonoFrame()

    public init() {

    }

    public func updateSettings(primaryColor: Color) {
        colors.primary = primaryColor
    }

}

