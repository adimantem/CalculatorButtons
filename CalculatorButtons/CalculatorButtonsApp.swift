//
//  CalculatorButtonsApp.swift
//  CalculatorButtons
//
//  Created by Don Jose on 1/28/24.
//

import SwiftUI

@main
struct CalculatorButtonsApp: App {
    @State private var display = DisplayValue()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(display)
        }
    }
}
