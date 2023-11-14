//
//  ButtonsView.swift
//  MonoFrameDemo
//
//  Created by JoeShon Monroe on 11/12/23.
//

import SwiftUI
import MonoFrame

struct ButtonsView: View {
    @EnvironmentObject var theme: MonoFrame
    var body: some View {
        List {
            Section("Normal") {
                Button(action: {

                }, label: {
                    Text("Primary Button")
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(MonoFrame.ButtonStyles.primary())

                Button(action: {

                }, label: {
                    Text("Secondary Button")
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(MonoFrame.ButtonStyles.secondary())

            }

            Section("Small") {
                Button(action: {

                }, label: {
                    Text("Primary Button")
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(MonoFrame.ButtonStyles.primary(.small))

                Button(action: {

                }, label: {
                    Text("Secondary Button")
                        .frame(maxWidth: .infinity)
                })
                .buttonStyle(MonoFrame.ButtonStyles.secondary(.small))

            }
        }
    }
}

#Preview {
    ButtonsView()
}
