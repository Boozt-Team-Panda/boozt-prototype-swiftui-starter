import Foundation

// MARK: - Boozt Spacing Tokens (Panda Design System)
// Source: design.md — Figma "Panda" Primitives collection

enum Spacing {
    /// 0px — No spacing
    static let zero: CGFloat = 0
    /// 4px — Badge padding, tight gaps
    static let xs: CGFloat = 4
    /// 8px — Small gaps, announcement bar padding. Also: semantic "Gap"
    static let s: CGFloat = 8
    /// 12px — Medium-small gaps
    static let ms: CGFloat = 12
    /// 16px — Card gaps, chip padding, general spacing. Also: semantic "Padding"
    static let m: CGFloat = 16
    /// 24px — Section spacing, header bottom padding. Also: semantic "Margin"
    static let l: CGFloat = 24
    /// 32px — Main content padding. Also: semantic "Gutter"
    static let xl: CGFloat = 32
    /// 48px — Large section spacing, footer padding
    static let xxl: CGFloat = 48

    // MARK: Semantic Aliases
    /// Default padding (16px)
    static let padding: CGFloat = m
    /// Default margin (24px)
    static let margin: CGFloat = l
    /// Default gap (8px)
    static let gap: CGFloat = s
    /// Default gutter (32px)
    static let gutter: CGFloat = xl
}

// MARK: - Interactive Element Sizing

enum ComponentSize {
    /// Standard interactive element height: buttons, inputs, size selectors, filter chips
    static let interactiveHeight: CGFloat = 44
    /// Size selector button width
    static let sizeButtonWidth: CGFloat = 50
    /// Announcement bar height
    static let announcementBarHeight: CGFloat = 40
}

// MARK: - Corner Radius

enum CornerRadius {
    /// 0px — Default for ALL Boozt UI elements
    static let sharp: CGFloat = 0
    /// 8px — Available but rarely used
    static let small: CGFloat = 8
    /// 16px — Available but rarely used
    static let medium: CGFloat = 16
    /// 24px — Available but rarely used
    static let large: CGFloat = 24
}
