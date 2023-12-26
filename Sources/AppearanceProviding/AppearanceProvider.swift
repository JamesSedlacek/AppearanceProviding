//
//  AppearanceProvider.swift
//
//  Created by James Sedlacek on 12/26/23.
//

import SwiftUI

@Observable
public final class AppearanceProvider: AppearanceProviding {
    private static let appearanceKey = "selectedAppearance"
    private let defaultAppearance: ColorScheme?
    private let userDefaults: UserDefaults

    public var colorScheme: ColorScheme? {
        get {
            access(keyPath: \.colorScheme)
            let appearanceTitle = userDefaults.string(forKey: Self.appearanceKey) ?? defaultAppearance.title
            return .init(title: appearanceTitle)
        }
        set {
            withMutation(keyPath: \.colorScheme) {
                userDefaults.set(newValue.title, forKey: Self.appearanceKey)
            }
        }
    }

    public init(defaultAppearance: ColorScheme? = nil,
                userDefaults: UserDefaults = .standard) {
        self.defaultAppearance = defaultAppearance
        self.userDefaults = userDefaults
    }
}
