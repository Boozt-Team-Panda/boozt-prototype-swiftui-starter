import SwiftUI

// MARK: - Boozt Brand Colors (Panda Design System)
// Source: design.md — Figma "Panda" design system, Boozt brand mode

extension Color {
    // MARK: Primary
    static let booztPrimary = Color(hex: 0x241D26)           // CTA button background
    static let booztOnPrimary = Color(hex: 0xFBF6F1)         // Text on primary (warm off-white)
    static let booztPrimaryContainer = Color(hex: 0x302A32)   // Pressed/container variant
    static let booztPrimaryFixedDim = Color(hex: 0x4C4D52)    // Dimmed primary variant

    // MARK: Secondary
    static let booztSecondary = Color.white                   // Secondary button background
    static let booztOnSecondary = Color(hex: 0x121212)        // Text on secondary

    // MARK: Background & Surface
    static let booztBackground = Color.white
    static let booztOnBackground = Color(hex: 0x121212)       // Default text (near-black, not pure black)
    static let booztSurface = Color(hex: 0xF5F5F5)            // Card/surface background
    static let booztOnSurface = Color(hex: 0x2A252C)          // Text on surfaces
    static let booztSurfaceVariant = Color(hex: 0xE5E5E8)     // Variant surface
    static let booztOnSurfaceVariant = Color(hex: 0x4C4D52)   // Muted text, descriptions
    static let booztSurfaceContainer = Color(hex: 0xEAE4DC)   // Warm beige container

    // MARK: Outline
    static let booztOutline = Color(hex: 0x92949B)            // Borders, dividers

    // MARK: Error / Sale
    static let booztError = Color(hex: 0xE0001A)              // Error states, sale prices
    static let booztOnError = Color.white
    static let booztErrorContainer = Color(hex: 0xF9E8EA)
    static let booztSalePrice = Color(hex: 0xD90225)          // Web sale price red
    static let booztStrikethroughPrice = Color(hex: 0x757575) // Old price text

    // MARK: Utility
    static let booztSuccess = Color(hex: 0x0E881B)
    static let booztSuccessContainer = Color(hex: 0xE7F6EB)
    static let booztWarning = Color(hex: 0xFCD34D)
    static let booztWarningContainer = Color(hex: 0xFEF3C7)
    static let booztInfo = Color(hex: 0x1580EB)
    static let booztInfoContainer = Color(hex: 0xE8F1F9)

    // MARK: Special Surfaces
    static let booztAnnouncementBar = Color.black             // Pure black top bar
    static let booztFooterDark = Color(hex: 0x212121)         // Dark footer section
    static let booztPromoBanner = Color(hex: 0xCC2B20)        // Red campaign banners

    // MARK: Neutral Scale
    static let booztNeutralBlack = Color(hex: 0x121212)
    static let booztNeutralGray50 = Color(hex: 0xF5F5F5)
    static let booztNeutralGray100 = Color(hex: 0xE5E5E8)
    static let booztNeutralGray400 = Color(hex: 0x92949B)
    static let booztNeutralGray600 = Color(hex: 0x4C4D52)
    static let booztNeutralGray800 = Color(hex: 0x2A252C)
}

// MARK: - Hex Color Initializer

extension Color {
    init(hex: UInt, opacity: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: opacity
        )
    }
}
