//
//  AppearancePicker+Extensions.swift
//
//
//  Created by Marcelo Diefenbach on 28/12/23.
//

import Foundation

public extension AppearancePicker {
    public func pickerStyle(_ style: AppearanceStyle) -> AppearancePicker {
        var newSelector = self
        newSelector.appearanceSelectorStyle = style
        return newSelector
    }
}
