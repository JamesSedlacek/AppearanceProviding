//
//  AppearancePicker.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

public struct AppearancePicker: View {
    
    public enum AppearanceStyle {
        case sheetWithImages
        case sheetWithTextOnly
        case segmented
        case menu
    }
    
    private let style: AppearanceStyle
    
    public init(style: AppearanceStyle = .sheetWithImages) {
        self.style = style
    }

    public var body: some View {
        switch style {
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
