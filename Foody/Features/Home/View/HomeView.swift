//
//  HomeView.swift
//  Foody
//
//  Created by Trung Ng on 21/9/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Image(systemName: "apple.image.playground.fill").resizable().frame(width: 100, height: 100)
        Text("Home").font(.app(style: .title))
    }
}

#Preview {
    HomeView()
}
