//
//  File.swift
//  Foody
//
//  Created by Trung Ng on 19/9/26.
//

import SwiftUI

// Font Sen is a variable font, available in Regular, Medium, Semi Bold, Bold, and Extra Bold weights.
let appFont = "Sen"

extension Font {
    static func app(size: CGFloat? = nil, weight: Font.Weight? = nil, style: TextStyle = .body) -> Font {
        .custom(appFont, size: size ?? style.size, relativeTo: style).weight(weight ?? style.weight)
    }
}

extension Font.TextStyle {
    var size : CGFloat {
        switch self {
        case .largeTitle:
            return 34
        case .title:
            return 28
        case .title2:
            return 22
        case .title3:
            return 20
        case .headline:
            return 17
        case .body:
            return 17
        case .callout:
            return 16
        case .subheadline:
            return 15
        case .footnote:
            return 13
        case .caption:
            return 12
        case .caption2:
            return 11
        @unknown default:
            return 17
        }
    }
    
    var weight: Font.Weight {
        switch self {
        case .largeTitle, .title, .headline:
            return .semibold
        default:
            return .medium
        }
    }
}
