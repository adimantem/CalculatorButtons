//
//  ContentView.swift
//  CalculatorButtons
//
//  Created by Don Jose on 1/28/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(DisplayValue.self) private var display
    private let buttons = Buttons.allCases
    
    func displayButtons(_ size: CGFloat) -> some View {
        ForEach(0 ..< 5) { row in
            HStack {
                ForEach(0 ..< 4) { column in
                    let index = row * 4 + column
                    
                    if buttons.indices.contains(index) {
                        let button = buttons[index]
                        
                        Button(action: {
                            display.text = button()
                        }) {
                            ButtonView(button: button, size: size)
                        }
                        .buttonStyle(.borderless)
                    }
                }
            }
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            let size = (min(geometry.size.width,geometry.size.height)-50) * 0.25
            
            VStack (spacing: 10) {
                Spacer()
                HStack {
                    Spacer()
                    Text(display.text)
                        .font(.system(size: 100))
                        .fontDesign(.rounded)
                        .minimumScaleFactor(0.4)
                        .scaledToFit()
                        .foregroundStyle(.white)
                }
                .padding(.trailing)
                displayButtons(size)
            }
        }
        .background(.black)
    }
}
#Preview {
    ContentView()
        .environment(DisplayValue())
}

extension Buttons {
    var background: Color {
        switch self {
        case .clear, .sign, .percent: return Color(.lightGray)
        case .divide, .multiply, .subtract, .add, .equals: return .orange
        default: return Color(.darkGray)
        }
    }
    
    var foreground: Color {
        [.clear, .sign, .percent].contains(self) ? .black : .white
    }
}
