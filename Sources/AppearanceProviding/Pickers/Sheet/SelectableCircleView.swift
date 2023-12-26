//
//  SelectableCircleView.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

struct SelectableCircleView: View {
    private let isSelected: Bool
    private let circleSize: CGFloat

    init(isSelected: Bool, circleSize: CGFloat = 24.0) {
        self.isSelected = isSelected
        self.circleSize = circleSize
    }

    var body: some View {
        Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
            .resizable()
            .frame(width: circleSize, height: circleSize)
            .foregroundStyle(isSelected ? .blue : .secondary)
    }
}

#Preview {
    HStack {
        SelectableCircleView(isSelected: true)
        SelectableCircleView(isSelected: false)
    }
}
