# SwiftUI Prototype Project — Boozt (Panda Design System)

This project is for rapid prototyping of SwiftUI screens that match the Boozt design language. The design system is documented in `design.md`. The SwiftUI token mappings live in `DesignSystem/`.

## Before Writing Any View

1. Read `design.md` to understand the Boozt visual identity.
2. Use the token extensions in `DesignSystem/` — never hardcode colors, font sizes, or spacing.
3. If the feature you're building maps to a layout pattern described in design.md (PLP, PDP, Homepage, etc.), follow that pattern closely.

## Design Identity — Non-Negotiables

- **0px corner radius on everything.** Buttons, cards, inputs, badges, containers — all sharp corners. This is the single most defining trait of Boozt's UI.
- **Near-black primary, warm off-white text.** CTA buttons use `Color.booztPrimary` (#241D26) with `Color.booztOnPrimary` (#FBF6F1). Not pure black, not pure white.
- **No shadows, no gradients, no rounded shapes.** Whitespace and typography do the work.
- **Red is for sales only.** `Color.booztError` is reserved for discounted prices and error states.
- **44px interactive element height.** Buttons, size selectors, filter chips — all 44px tall.
- **Warm neutrals for accent surfaces.** Use `Color.booztSurfaceContainer` (#EAE4DC), not cold grays.
- **Typography stays light.** Weights 400–500 for almost everything. Bold (700) only for rare promo banners.
- **Underlined text links** are the default.

## Code Conventions

### Architecture
- MVVM: each screen gets a View and a ViewModel in the same file.
- ViewModels are `@Observable` classes (iOS 17+).
- Keep views declarative — logic goes in the ViewModel.

### File Organization
- One file per screen: `FeatureNameView.swift` (View + ViewModel).
- Reusable components: `Components/`.
- Design tokens: `DesignSystem/` (Color+Boozt.swift, Font+Boozt.swift, Spacing.swift).

### SwiftUI Patterns
- `#Preview` macro with mock data in every file.
- `NavigationStack`, not `NavigationView`.
- `@State` for local state, `@Environment` for DI.
- SF Symbols for icons (closest match to Boozt's icon style).

### Mock Data
- Every screen must render with realistic data — Danish product names, plausible prices in DKK, real-sounding brand names.
- Use `static let mock` on model types.
- No "Lorem ipsum" or placeholder text.

### What NOT To Do
- No unit tests.
- No networking or persistence — mock everything.
- No third-party dependencies.
- No modifications to the App entry point unless navigation requires it.
- No border radius > 0 unless explicitly specified for a specific element.
