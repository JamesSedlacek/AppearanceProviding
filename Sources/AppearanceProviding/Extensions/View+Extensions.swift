//
//  View+Extensions.swift
//
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

extension View {
    /// Sets the appearance of the view.
    ///
    /// - Parameters:
    ///   - default: The default color scheme. If not provided, the system default will be used.
    ///   - storage: The UserDefaults instance where the color scheme is stored. If not provided, the standard UserDefaults will be used.
    /// - Returns: A view with the specified appearance.
    public func setAppearance(`default`: ColorScheme? = nil,
                              storage: UserDefaults = .standard) -> some View {
        modifier(AppearanceProvidingViewModifier(.init(defaultAppearance: `default`,
                                                       userDefaults: storage)))
    }
}
