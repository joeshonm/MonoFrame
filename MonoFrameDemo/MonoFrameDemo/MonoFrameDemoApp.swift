//
//  MonoFrameDemoApp.swift
//  MonoFrameDemo
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI
import MonoFrame

@main
struct MonoFrameDemoApp: App {
    @StateObject var theme: MonoFrame = MonoFrame.shared

    init() {

    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(theme)
                .onAppear {
                    theme.updateSettings(primaryColor: .orange)
                }
        }
    }
}
