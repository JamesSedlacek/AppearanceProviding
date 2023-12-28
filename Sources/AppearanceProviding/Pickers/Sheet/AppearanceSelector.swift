//
//  AppearanceSheet.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct AppearanceSelector: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @Environment(\.dismiss)
    private var dismiss
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }
    var style: AppearanceStyle = .menuPicker

    var body: some View {
        switch style {
        case .sheetWithImages:
            StyleSheetWithImagesView()
        case .sheetWithTextOnly:
            StyleSheetWithTextOnly()
        case .segmentedControl:
            StyleSegmentedControl()
        case .menuPicker:
            StyleMenuPicker()
        }
    }
}

#Preview {
    NavigationStack {
            AppearanceSelector(style: .sheetWithImages)
                .setAppearance()
    }
}
