//
//  AppearanceProvidingViewModifier.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct AppearanceProvidingViewModifier: ViewModifier {
    @State private var appearanceProvider: AppearanceProvider

    func body(content: Content) -> some View {
        content
            .preferredColorScheme(appearanceProvider.colorScheme)
            .environment(appearanceProvider)
    }

    init(_ appearanceProvider: AppearanceProvider) {
        self._appearanceProvider = .init(initialValue: appearanceProvider)
    }
}
