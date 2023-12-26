//
//  AppearanceSheetPicker.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

public struct AppearanceSheetPicker: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    @State private var isSheetPresented = false

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
            AppearanceSheet()
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
