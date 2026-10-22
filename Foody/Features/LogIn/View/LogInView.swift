//
//  LogInView.swift
//  Foody
//
//  Created by Trung Ng on 27/9/26.
//

import SwiftUI

struct LogInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            authBackground
            content
        }.ignoresSafeArea()
    }

    var authBackground: some View {
        Group {
            Color.customSecondary.frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            Image(.authBg).resizable().scaledToFit().frame(maxWidth: .infinity)
        }
    }

    var content: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("Log In").font(.app(style: .title)).foregroundStyle(.white)
            Text("Please sign in to your existing account").font(
                .app(style: .callout)
            ).foregroundStyle(.white)
            form
        }.frame(maxWidth: .infinity).padding(.top, 100)
    }

    var form: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AppSpacer(height: 24)
                Text("Email").font(.app(style: .title3))
                AppTextField(hint: "Email", text: $email)
                AppSpacer(height: 16)
                Text("Password").font(.app(style: .title3))
                AppTextField(
                    hint: "Password",
                    isPassword: true,
                    text: $password
                )
                AppSpacer(height: 16)
                HStack {
                    HStack {
                        Toggle("Remember me", isOn: $rememberMe).font(
                            .app()
                        )
                        .toggleStyle(.appCheckBox)
                    }
                    Spacer()
                    Text("Forgot password?").foregroundStyle(.customPrimary)
                }
                AppSpacer(height: 16)
                AppButton(title: "Log In") {

                }
                AppSpacer(height: 32)
                HStack(alignment: .center) {
                    Text("Don't have an account?").foregroundStyle(
                        .secondary
                    )
                    Text("Sign Up").font(.app(weight: .semibold))
                        .foregroundStyle(
                            .customPrimary
                        )
                }.frame(maxWidth: .infinity)
                AppSpacer(height: 16)
                HStack(alignment: .center) {
                    Rectangle()
                        .fill(.separator)
                        .frame(height: 1)
                    Text("Or").font(.app(weight: .ultraLight)).padding(
                        .horizontal,
                        16
                    )
                    Rectangle()
                        .fill(.separator)
                        .frame(height: 1)
                }
                AppSpacer(height: 16)
                HStack(alignment: .center, spacing: 50) {
                    Button {

                    } label: {
                        Image(.facebook).resizable().frame(
                            width: 50,
                            height: 50
                        )
                    }
                    Button {

                    } label: {
                        Image(.google).resizable().frame(
                            width: 50,
                            height: 50
                        )
                    }
                    Button {

                    } label: {
                        Image(.apple).resizable().frame(
                            width: 50,
                            height: 50
                        )
                    }
                }.frame(maxWidth: .infinity)
                AppSpacer(height: 64)
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 24)
        .background(
            UnevenRoundedRectangle(
                topLeadingRadius: 32,
                topTrailingRadius: 32
            ).fill(Color.white)
        )
        .padding(.top, 40)
    }
}

#Preview {
    LogInView()
}
