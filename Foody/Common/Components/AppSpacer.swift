//
//  AppSpacer.swift
//  Foody
//
//  Created by Trung Ng on 30/9/26.
//

import SwiftUI

struct AppSpacer: View {
    var width: CGFloat?
    var height: CGFloat?

    var body: some View {
        Color.clear.frame(width: width, height: height)
    }
}

#Preview {
    AppSpacer()
}
