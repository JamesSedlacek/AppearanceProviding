//
//  File.swift
//  
//
//  Created by Marcelo Diefenbach on 28/12/23.
//

import Foundation

extension AppearanceSelector {
    func setPickerStyle(_ style: AppearanceStyle) -> AppearanceSelector {
        var newSelector = self
        newSelector.appearanceSelectorStyle = style
        return newSelector
    }
}
