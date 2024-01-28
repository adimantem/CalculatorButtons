//
//  ButtonView.swift
//  CalculatorButtons
//
//  Created by Don Jose on 1/28/24.
//

import SwiftUI

struct ButtonView: View {
    let button: Buttons
    let size: CGFloat
    
    var body: some View {
        let haba = (button == .zero) ? size * 2 + 10 : size
        
        HStack {
            Text(button())
                .foregroundStyle(button.foreground)
                .font(.largeTitle)
                .fontDesign(.rounded)
                .bold()
            if button == .zero {
                Circle().fill(.clear)
            }
        }
        .frame(width: haba, height: size)
        .background(button.background)
        .clipShape(.capsule)
        .lineLimit(1)
    }
}

#Preview {
    ButtonView(button: Buttons.zero, size: .zero)
}
