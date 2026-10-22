//
//  AppButton.swift
//  Foody
//
//  Created by Trung Ng on 21/9/26.
//

import SwiftUI

struct AppButton: View {
     let title: String
     let action: () -> Void

     var body: some View {
          Button {
               action()
          } label: {
               Text(title).font(.app(weight: .bold, style: .title3))
                    .foregroundStyle(.white).frame(maxWidth: .infinity)
                    .padding(.vertical, 12).padding(.horizontal, 16)
          }.buttonStyle(.borderedProminent).tint(.customPrimary).buttonBorderShape(
               .roundedRectangle(radius: 16)
          )
     }
}

#Preview {
     AppButton(
          title: "Tap Me!",
          action: {}
     )
}
