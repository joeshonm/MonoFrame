//
//  ContentView.swift
//  MonoFrameDemo
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Components") {
                    NavigationLink("Buttons", destination: ButtonsView())
                    NavigationLink("Toggles", destination: TogglesView())
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
