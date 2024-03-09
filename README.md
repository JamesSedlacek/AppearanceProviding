# AppearanceProviding

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![GitHub stars](https://img.shields.io/github/stars/JamesSedlacek/AppearanceProviding.svg)](https://github.com/JamesSedlacek/AppearanceProviding/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/JamesSedlacek/AppearanceProviding.svg?color=blue)](https://github.com/JamesSedlacek/AppearanceProviding/network)
[![GitHub contributors](https://img.shields.io/github/contributors/JamesSedlacek/AppearanceProviding.svg?color=blue)](https://github.com/JamesSedlacek/AppearanceProviding/network)
<a href="https://github.com/JamesSedlacek/AppearanceProviding/pulls"><img src="https://img.shields.io/github/issues-pr/JamesSedlacek/AppearanceProviding" alt="Pull Requests Badge"/></a>
<a href="https://github.com/JamesSedlacek/AppearanceProviding/issues"><img src="https://img.shields.io/github/issues/JamesSedlacek/AppearanceProviding" alt="Issues Badge"/></a>


<p align="left">
  <img src = "https://github.com/JamesSedlacek/AppearanceProviding/blob/main/Assets/AppearanceSheetPicker.png" width="350">
</p>

## Description
`AppearanceProviding` is a SwiftUI library for selecting a preferred color scheme. <br>

<br>

## Requirements

- **iOS**: 17.0 or later.
- **macOS**: 14.0 or later.

<br>

## Installation

You can install `AppearanceProviding` using the Swift Package Manager.

1. In Xcode, select "File" > "Add Package Dependencies".
2. Copy & paste the following into the "Search or Enter Package URL" search bar.
```
https://github.com/JamesSedlacek/AppearanceProviding.git
```
4. Xcode will fetch the repository & the "AppearanceProviding" library will be added to your project.

<br>

## Usage

1. Add `.setAppearance()` to the root view in your project.
```swift
import AppearanceProviding
import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        ContentView()
            .setAppearance()
    }
}
```

<br>

2. Use an Appearance Picker in the settings screen in your project.
```swift
import AppearanceProviding
import SwiftUI

struct SettingsView {
    var body: some View {
        VStack {
            AppearancePicker()
                .pickerStyle(.sheetWithImages)
            AppearancePicker()
                .pickerStyle(.sheetWithTextOnly)
            AppearancePicker()
                .pickerStyle(.segmented)
            AppearancePicker()
                .pickerStyle(.menu)
        }
    }
}
```

<br>

## Author

James Sedlacek, find me on [X/Twitter](https://twitter.com/jsedlacekjr) or [LinkedIn](https://www.linkedin.com/in/jamessedlacekjr/)
