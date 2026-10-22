//
//  ContentView.swift
//  Foody
//
//  Created by Trung Ng on 18/9/26.
//

import SwiftUI

struct RootView: View {
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    var body: some View {
        if isFirstLaunch {
            OnboardingView(isFirstLaunch: $isFirstLaunch)
        }
        else {
            LogInView()
        }
    }
}

#Preview {
    RootView()
}
