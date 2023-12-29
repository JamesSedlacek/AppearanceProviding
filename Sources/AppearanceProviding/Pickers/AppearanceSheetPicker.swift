//
//  AppearanceSheetPicker.swift
//
//  Created by Marcelo Diefenbach on 29/12/23.
//

import SwiftUI

public struct AppearanceSheetPicker: View {
    
    public enum AppearanceSheetPickerStyle {
        case sheetWithImages
        case sheetWithTextOnly
    }
    
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @State private var isSheetPresented = false

    private let style: AppearanceSheetPickerStyle
    
    public init(style: AppearanceSheetPickerStyle = .sheetWithImages) {
        self.style = style
    }

    public var body: some View {
        HStack(spacing: 4) {
            Text(appearanceProvider.colorScheme.title)
                .font(.subheadline)
            Image(systemName: "chevron.up.chevron.down")
                .font(.caption)
        }
        .foregroundStyle(.secondary)
        .onTapGesture {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            switch style {
            case .sheetWithImages:
                StyleSheetWithImagesView()
            case .sheetWithTextOnly:
                StyleSheetWithImagesView()
            }
        }
    }
}

#Preview {
    VStack {
        AppearanceSheetPicker()
            .padding()
    }
    .setAppearance()
}

