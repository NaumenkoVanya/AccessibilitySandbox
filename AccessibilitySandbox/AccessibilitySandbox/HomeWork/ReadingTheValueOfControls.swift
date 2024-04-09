//
//  ReadingTheValueOfControls.swift
//  AccessibilitySandbox
//
//  Created by Ваня Науменко on 8.04.24.
//

import SwiftUI

struct ReadingTheValueOfControls: View {
    @State private var value = 10
    var body: some View {
        VStack {
            Text("Value \(value)")
            Button("Incremrnt") {
                value += 1
            }
            Button("Decrement") {
                value -= 1
            }
            Button("John Fitzgerald Kennedy") {
                print("Button tapped")
            }
            .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { derection in
            switch derection {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handler")
            }
        }
    }
}

#Preview {
    ReadingTheValueOfControls()
}
