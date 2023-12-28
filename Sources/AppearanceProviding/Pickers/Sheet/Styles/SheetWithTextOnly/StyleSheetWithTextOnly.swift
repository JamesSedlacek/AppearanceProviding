//
//  SwiftUIView.swift
//
//
//  Created by Marcelo Diefenbach on 28/12/23.
//

import SwiftUI

struct StyleSheetWithTextOnly: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @Environment(\.dismiss)
    private var dismiss
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }

    var body: some View {
        VStack {
            Spacer()
            ForEach(colorSchemeCases, id: \.title) { colorScheme in
                TextOnlyItens(colorScheme: colorScheme)
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
        .presentationDetents([.height(360)])
        .preferredColorScheme(appearanceProvider.colorScheme)
    }
}


#Preview {
    StyleSheetWithTextOnly()
}
