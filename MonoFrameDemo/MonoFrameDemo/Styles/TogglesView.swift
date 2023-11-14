//
//  ButtonsView.swift
//  MonoFrameDemo
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI
import MonoFrame

struct TogglesView: View {
    
    @State private var isPrimaryToggleOn: Bool = false
    @State private var isCheckboxToggleOn: Bool = false
    var body: some View {
        List {
            Section("Toggles") {
                Toggle("Primary Toggle", isOn: $isPrimaryToggleOn)
                    .toggleStyle(MonoFrame.ToggleStyles.primary())
                Toggle("Checkbox Toggle", isOn: $isCheckboxToggleOn)
                    .toggleStyle(MonoFrame.ToggleStyles.checkbox())
            }
        }
    }
}

#Preview {
    ButtonsView()
}
