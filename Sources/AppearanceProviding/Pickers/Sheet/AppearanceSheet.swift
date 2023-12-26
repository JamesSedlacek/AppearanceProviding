//
//  AppearanceSheet.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct AppearanceSheet: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @Environment(\.dismiss)
    private var dismiss
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }

    var body: some View {
        NavigationStack {
            HStack {
                Spacer()
                ForEach(colorSchemeCases, id: \.title) { colorScheme in
                    AppearanceOptionView(colorScheme: colorScheme)
                        .frame(maxWidth: .infinity)
                }
                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Appearance Selection")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
        }
        .presentationDetents([.height(360)])
        .preferredColorScheme(appearanceProvider.colorScheme)
    }
}

#Preview {
    AppearanceSheet()
        .setAppearance()
}
