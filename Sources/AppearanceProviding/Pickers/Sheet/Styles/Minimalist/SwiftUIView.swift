//
//  SwiftUIView.swift
//  
//
//  Created by Marcelo Diefenbach on 28/12/23.
//


import SwiftUI

struct AppearanceOptionMinimalistView: View {
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
        HStack(spacing: 12) {
            Text(colorScheme.title)
                .font(.system(size: 18, weight: .medium))
                .fixedSize()
            Spacer()
            SelectableCircleView(isSelected: isSelected)
        }
        .padding(.all, 16)
        .background(.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .onTapGesture {
            appearanceProvider.colorScheme = colorScheme
        }
    }
}

#Preview {
    HStack {
        AppearanceOptionView(colorScheme: .light)
        AppearanceOptionView(colorScheme: .dark)
        AppearanceOptionView(colorScheme: .none)
    }
    .setAppearance()
}
