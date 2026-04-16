import SwiftUI

// MARK: - Boozt Typography (Panda Design System)
// Source: design.md — Figma "Panda" design system, Boozt brand mode
//
// The Boozt brand uses "Suisse Int'l" which is a commercial font.
// For prototyping, we use the system font (SF Pro) which has a similar
// neutral Swiss aesthetic. Replace with the actual font when available.
//
// To use Suisse Int'l: add the font files to the Xcode project,
// register them in Info.plist, and change `booztFont` below.

extension Font {
    // MARK: - Font Constructor
    // Change this to use a custom font when available:
    // private static func booztFont(size: CGFloat, weight: Font.Weight) -> Font {
    //     .custom("SuisseIntl-Regular", size: size) // adjust name per weight
    // }
    private static func booztFont(size: CGFloat, weight: Font.Weight) -> Font {
        .system(size: size, weight: weight)
    }

    // MARK: - Display
    /// 34px, medium (500) — Largest headings, hero text
    static let booztDisplayLarge = booztFont(size: 34, weight: .medium)
    /// 28px, medium (500) — Section headings, category titles
    static let booztDisplayMedium = booztFont(size: 28, weight: .medium)
    /// 22px, regular — Sub-section headings
    static let booztDisplaySmall = booztFont(size: 22, weight: .regular)

    // MARK: - Headline
    /// 20px, regular — Footer headings, card titles
    static let booztHeadlineMedium = booztFont(size: 20, weight: .regular)

    // MARK: - Title
    /// 17px, regular — Brand name on PDP, prominent labels
    static let booztTitleLarge = booztFont(size: 17, weight: .regular)
    /// 15px, regular — Prices, CTA text, medium emphasis
    static let booztTitleMedium = booztFont(size: 15, weight: .regular)
    /// 13px, regular — Size selectors, card details
    static let booztTitleSmall = booztFont(size: 13, weight: .regular)

    // MARK: - Body
    /// 17px, regular — Body copy, descriptions
    static let booztBodyLarge = booztFont(size: 17, weight: .regular)
    /// 15px, regular — Standard body text
    static let booztBodyMedium = booztFont(size: 15, weight: .regular)
    /// 13px, regular — Product card info, footer links, filter chips
    static let booztBodySmall = booztFont(size: 13, weight: .regular)

    // MARK: - Label
    /// 11px, regular — Badge text, small labels, captions
    static let booztLabelSmall = booztFont(size: 11, weight: .regular)

    // MARK: - Special
    /// 12px, regular — Navigation, breadcrumbs (web base size)
    static let booztNavigation = booztFont(size: 12, weight: .regular)
    /// 13px, medium (500) — Active category in sidebar
    static let booztCategoryActive = booztFont(size: 13, weight: .medium)
}
