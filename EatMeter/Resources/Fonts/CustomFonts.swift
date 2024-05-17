//
//  CustomFonts.swift
//  EatMeter
//
//  Created by Lika Maksimovic on 17.05.2024.
//

import SwiftUI

enum CustomFonts: String {
    case ubuntu = "Ubuntu"
    case roboto = "Roboto"
    case rounded = "Rounded Mplus 1c"
}

struct FontBuilder {
    let font: Font
    let tracking: Double
    let lineSpacing: Double
    let verticalPadding: Double
    
    init(
        customFont: CustomFonts,
        fontSize: Double,
        weight: Font.Weight = .regular,
        letterSpacing: Double = 0,
        lineHeight: Double
    ) {
        self.font = Font.custom(customFont.rawValue, size: fontSize).weight(weight)
        self.tracking = fontSize * letterSpacing
        
        let uiFont = UIFont(name: customFont.rawValue, size: fontSize) ?? .systemFont(ofSize: fontSize)
        self.lineSpacing = lineHeight - uiFont.lineHeight
        self.verticalPadding = self.lineSpacing / 2
    }
}

extension FontBuilder {
    static let title = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        lineHeight: 24
    )
    
    static let h1 = FontBuilder(
        customFont: .rounded,
        fontSize: 24,
        weight: .heavy,
        lineHeight: 28
    )

    static let h2 = FontBuilder(
        customFont: .rounded,
        fontSize: 18,
        weight: .heavy,
        lineHeight: 26
    )

    static let screenSubtitle = FontBuilder(
        customFont: .roboto,
        fontSize: 14,
        weight: .regular,
        lineHeight: 16
    )
    
    static let smallButtonTxt = FontBuilder(
        customFont: .rounded,
        fontSize: 16,
        weight: .heavy,
        lineHeight: 24
    )
    
    static let bodyText = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        weight: .regular,
        lineHeight: 24
    )

    static let bodyTextSmall = FontBuilder(
        customFont: .ubuntu,
        fontSize: 16,
        weight: .regular,
        lineHeight: 22
    )

    static let bottomBarText = FontBuilder(
        customFont: .rounded,
        fontSize: 12,
        weight: .heavy,
        lineHeight: 16
    )

    static let inputText = FontBuilder(
        customFont: .roboto,
        fontSize: 16,
        weight: .regular,
        lineHeight: 24
    )

    static let buttonText = FontBuilder(
        customFont: .rounded,
        fontSize: 18,
        weight: .heavy,
        lineHeight: 24
    )

    static let bodyAccsent = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        weight: .medium,
        letterSpacing: -0.01,
        lineHeight: 24
    )
}

extension Font {
    static func custom(_ fontName: CustomFonts, size: Double) -> Font {
        Font.custom(fontName.rawValue, size: size)
    }
}
