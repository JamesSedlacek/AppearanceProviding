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
    
    var style: AppearanceStyle = .defaultStyle

    var body: some View {
        NavigationStack {
            switch style {
            case .defaultStyle:
                Default()
            case .minimalistStyle:
                Minimalist()
            }
        }
    }
}

#Preview {
    AppearanceSheet(style: .minimalistStyle)
        .setAppearance()
}
