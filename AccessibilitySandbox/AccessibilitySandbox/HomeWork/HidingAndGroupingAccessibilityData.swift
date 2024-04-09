//
//  HidingAndGroupingAccessibilityData.swift
//  AccessibilitySandbox
//
//  Created by Ваня Науменко on 8.04.24.
//

import SwiftUI

struct HidingAndGroupingAccessibilityData: View {
    var body: some View {
//        Image(.character)
//            .accessibilityHidden(true)
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Your score is 1000")
        
    }
}

#Preview {
    HidingAndGroupingAccessibilityData()
}
