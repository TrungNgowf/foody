//
//  CheckboxToggleStyle.swift
//  Foody
//
//  Created by Trung Ng on 30/9/26.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            withAnimation {
                configuration.isOn.toggle()
            }
        } label: {
            HStack {
                Group {
                    configuration.isOn
                        ? Image(systemName: "checkmark.square.fill")
                        : Image(systemName: "square")
                }.imageScale(.large).contentTransition(.symbolEffect(.replace))
                configuration.label.font(.app())
            }.foregroundStyle(
                configuration.isOn ? Color.customPrimary : Color.secondary
            )
        }
        .buttonStyle(.plain)
        .sensoryFeedback(.selection, trigger: configuration.isOn)
        .accessibilityAddTraits(.isToggle)
        .accessibilityValue(configuration.isOn ? "Đã chọn" : "Chưa chọn")
    }
}

extension ToggleStyle where Self == CheckboxToggleStyle {
    static var appCheckBox: CheckboxToggleStyle { .init() }
}

#Preview {
    @Previewable @State var isOn = false
    Toggle("Đồng ý", isOn: $isOn)
        .toggleStyle(CheckboxToggleStyle())
        .padding()
}
