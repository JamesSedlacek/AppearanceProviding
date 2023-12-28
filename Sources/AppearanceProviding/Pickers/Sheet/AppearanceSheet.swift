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
    
    var style: AppearanceStyle = .style1

    var body: some View {
        NavigationStack {
            switch style {
            case .style1:
                Default()
            case .style2:
                Minimalist()
            }
        }
    }
}

#Preview {
    AppearanceSheet(style: .style2)
        .setAppearance()
}
