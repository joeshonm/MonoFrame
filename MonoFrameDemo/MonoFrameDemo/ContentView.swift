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
                Section("Styles") {
                    NavigationLink("Buttons", destination: ButtonsView())
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
