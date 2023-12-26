//
//  ColorScheme+Extensions.swift
//
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

public extension ColorScheme? {
    /// Icon representation of the color scheme.
    var icon: Image {
        switch self {
        case .light:
            return Image(systemName: "sun.max")
        case .dark:
            return Image(systemName: "moon")
        case .none:
            return Image(systemName: "circle.lefthalf.filled")
        @unknown default:
            fatalError("Unknown color scheme")
        }
    }

    /// Image representation of the color scheme.
    var image: Image {
        switch self {
        case .light:
            return Image(.lightMode)
        case .dark:
            return Image(.darkMode)
        case .none:
            return Image(.systemMode)
        @unknown default:
            fatalError("Unknown color scheme")
        }
    }

    /// Title of the color scheme.
    var title: String {
        switch self {
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        case .none:
            return "System"
        @unknown default:
            fatalError("Unknown color scheme")
        }
    }

    /// Initialize a color scheme from a title.
    init(title: String) {
        switch title {
        case "Light":
            self = .light
        case "Dark":
            self = .dark
        case "System":
            self = .none
        default:
            self = .none
        }
    }
}
