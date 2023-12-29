//
//  AppearenceImageOptionView.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct AppearenceImageOptionView: View {
    @Environment(AppearanceProvider.self)
    private var appearanceProvider
    private let colorScheme: ColorScheme?
    private let cornerRadius: CGFloat = 8.0
    private var isSelected: Bool {
        colorScheme == appearanceProvider.colorScheme
    }

    init(colorScheme: ColorScheme?) {
        self.colorScheme = colorScheme
    }

    var body: some View {
        VStack(spacing: 12) {
            colorScheme.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(.rect(cornerRadius: cornerRadius))
                .overlay {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(Color.secondary, lineWidth: 1.0)
                }
            Text(colorScheme.title)
                .font(.system(size: 18, weight: .medium))
                .fixedSize()
            SelectableCircleView(isSelected: isSelected)
        }
        .onTapGesture {
            appearanceProvider.colorScheme = colorScheme
        }
    }
}

#Preview {
    HStack {
        AppearenceImageOptionView(colorScheme: .light)
        AppearenceImageOptionView(colorScheme: .dark)
        AppearenceImageOptionView(colorScheme: .none)
    }
    .setAppearance()
}
