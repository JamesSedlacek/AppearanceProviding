//
//  AppearanceSheet.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct AppearancePicker: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @Environment(\.dismiss)
    private var dismiss
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }
    
    var appearanceSelectorStyle: AppearanceStyle = .sheetWithImages

    var body: some View {
        switch appearanceSelectorStyle {
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
            AppearancePicker()
                .pickerStyle(.menuPicker)
                .setAppearance()
    }
}
