//
//  OnboardingView.swift
//  Foody
//
//  Created by Trung Ng on 21/9/26.
//

import SwiftUI

struct OnboardingView: View {
    @State var activeIndex: Int = 0
    @Binding var isFirstLaunch: Bool

    var body: some View {
        Group {
            TabView(selection: $activeIndex) {
                Tab(value: 0) {
                    OnboardingTab(
                        image: Image(.onboarding01),
                        title: "All your favorites",
                        description:
                            "Get all your loved foods in one once place, you just place the orer we do the rest",
                    )

                }
                Tab(value: 1) {
                    OnboardingTab(
                        image: Image(.onboarding02),
                        title: "Free delivery offers",
                        description:
                            "Get all your loved foods in one once place, you just place the orer we do the rest",
                    )
                }
            }.tabViewStyle(.page(indexDisplayMode: .never))
            OnboardingIndicator(count: 2, currentIndex: activeIndex)
        }.padding(.horizontal, 16).padding(.bottom, 32)
        Spacer()
        AppButton(title: activeIndex == 1 ? "Get Started" : "Continue") {
            withAnimation {
                if activeIndex == 1 {
                    isFirstLaunch.toggle()
                }
                activeIndex += 1
            }
        }.padding(.bottom, 32).padding(.horizontal, 16)
    }
}

struct OnboardingTab: View {
    let image: Image
    let title: String
    let description: String
    var body: some View {
        VStack(alignment: .center) {
            image.resizable().scaledToFill().frame(
                width: 280,
                height: 360
            ).clipped().clipShape(.rect(cornerRadius: 16))
            Spacer().frame(height: 32)
            Text(title).font(
                .app(weight: .heavy, style: .title2)
            )
            Spacer().frame(height: 16)
            Text(description).font(.app(weight: .light, style: .body))
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    OnboardingView(isFirstLaunch: .constant(false))
}
