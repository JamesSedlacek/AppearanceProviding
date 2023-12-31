//
//  AppearanceMenuPicker.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

public struct AppearanceMenuPicker: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }

    public init() { }

    public var body: some View {
        @Bindable var appearanceProvider = appearanceProvider
        Picker("Appearance", selection: $appearanceProvider.colorScheme) {
            ForEach(colorSchemeCases, id: \.self) { colorScheme in
                Text(colorScheme.title)
            }
        }
        .pickerStyle(.menu)
    }
}

#Preview {
    VStack {
        AppearanceMenuPicker()
            .padding()
    }
    .setAppearance(default: .dark)
}
