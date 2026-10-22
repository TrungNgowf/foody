//
//  OnboardingIndicator.swift
//  Foody
//
//  Created by Trung Ng on 21/9/26.
//

import SwiftUI

struct OnboardingIndicator: View {
    let count: Int
    var currentIndex: Int

    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<count, id: \.self) { index in
                Circle().frame(width: 10, height: 10).foregroundStyle(
                    currentIndex == index
                        ? .customPrimary : .customPrimary.opacity(0.3)
                )

            }
        }.animation(.interactiveSpring, value: currentIndex)
    }
}

#Preview {
    OnboardingIndicator(count: 3, currentIndex: 0)
}
