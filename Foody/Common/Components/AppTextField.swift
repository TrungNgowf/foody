//
//  AppTextField.swift
//  Foody
//
//  Created by Trung Ng on 29/9/26.
//

import SwiftUI

struct AppTextField: View {
    let hint: String
    var isPassword: Bool = false
    @State private var isVisible: Bool = false
    @Binding var text: String

    @FocusState private var isFocused: Bool

    var body: some View {
        HStack {
            Group {
                if !isVisible && isPassword {
                    SecureField(hint, text: $text)
                } else {
                    TextField(hint, text: $text)
                }
            }
            .focused($isFocused)
            .textContentType(isPassword ? .password : nil)
            if isPassword {
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.15)) {
                        isVisible.toggle()
                    }
                }) {
                    Image(systemName: isVisible ? "eye" : "eye.slash")
                        .foregroundStyle(.customPrimary)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .animation(.easeInOut(duration: 0.15), value: isFocused)
    }
}

#Preview {
    AppTextField(hint: "This is a hint!", text: .constant(""))
    AppSpacer(height: 16)
    AppTextField(
        hint: "This is a password!",
        isPassword: true,
        text: .constant("")
    )
}
