//
//  AppearancePicker.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

enum AppearanceStyle {
    case sheetWithImages
    case sheetWithTextOnly
    case segmented
    case menu
}

struct AppearancePicker: View {
    
    var appearanceSelectorStyle: AppearanceStyle = .sheetWithImages

    var body: some View {
        switch appearanceSelectorStyle {
        case .sheetWithImages:
            StyleSheetWithImagesView()
        case .sheetWithTextOnly:
            StyleSheetWithTextOnly()
        case .segmented:
            StyleSegmentedControl()
        case .menu:
            StyleMenuPicker()
        }
    }
}

#Preview {
    NavigationStack {
            AppearancePicker()
                .pickerStyle(.menu)
                .setAppearance()
    }
}
