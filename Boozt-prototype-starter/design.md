# Boozt.com Design System Reference

> This document captures the UI and UX design language of Boozt.com — a Scandinavian multi-brand fashion e-commerce platform. Use it to design screens, components, and flows that feel native to the Boozt experience. Image style and photography direction are out of scope — focus on UI patterns, layout, typography, color, and interaction design only.
>
> **Source:** Extracted from the Figma design system file "Panda" (Boozt's internal DS) and the live Boozt.com website. The Figma file uses a multi-brand variable architecture (Boozt, Booztlet, BooztPay, ClubBoozt) — this document covers the **Boozt** brand mode only.
>
> **Design system name:** Panda

---

## Brand Personality

- **Tone:** Clean, premium-casual, Scandinavian minimalism with commercial confidence
- **Feel:** Trustworthy, modern, content-forward — the UI stays out of the way and lets the product shine
- **Not:** Flashy, playful, experimental, or overly decorative

---

## Typography

### Font Family
- **Primary (Boozt brand):** `Suisse Int'l` — Figma variable: `typography_p/fontFamily/boozt`
- **Web CSS name:** `Suisse, arial, helvetica, sans-serif`
- **Booztlet brand uses:** `ABC Favorit` (for reference, not in scope here)
- **No serif or decorative fonts** in the UI

### Type Scale — Figma Design Tokens (Boozt mode)
These are the official design system tokens from the Panda Figma file:

| Figma Token          | Size | Weight | Line Height | Usage |
|----------------------|------|--------|-------------|-------|
| displayLarge         | 34px | 500 (medium) | 40px | Largest headings, hero text |
| displayMedium        | 28px | 500 (medium) | 32px | Section headings, category titles |
| displaySmall         | 22px | —      | 28px        | Sub-section headings |
| headlineMedium       | 20px | —      | 24px        | Footer headings, card titles |
| titleLarge           | 17px | —      | 24px        | PDP brand name, prominent labels |
| titleMedium          | 15px | —      | 20px        | Prices, CTA text, medium emphasis |
| titleSmall           | 13px | —      | 16px        | Size selectors, card details |
| bodyLarge            | 17px | —      | 24px        | Body copy, descriptions |
| bodyMedium           | 15px | —      | 20px        | Standard body text |
| bodySmall            | 13px | —      | 16px        | Product card info, footer links, filter chips |
| labelSmall           | 11px | —      | 16px        | Badge text, small labels, captions |

### Primitive Font Size Scale (Figma variables)
| Variable              | Value |
|-----------------------|-------|
| typography_p/fontSize/01 | 11px |
| typography_p/fontSize/02 | 13px |
| typography_p/fontSize/03 | 15px |
| typography_p/fontSize/04 | 16px |
| typography_p/fontSize/05 | 17px |
| typography_p/fontSize/06 | 20px |
| typography_p/fontSize/07 | 22px |
| typography_p/fontSize/08 | 24px |
| typography_p/fontSize/09 | 28px |
| typography_p/fontSize/10 | 32px |
| typography_p/fontSize/11 | 34px |
| typography_p/fontSize/12 | 36px |
| typography_p/fontSize/13 | 40px |

### Font Weights (Figma variables)
| Variable                        | Value | Name    | Usage |
|---------------------------------|-------|---------|-------|
| typography_p/fontWeight/regular | 400   | Regular | Body text, navigation, buttons, prices |
| typography_p/fontWeight/book    | 450   | Book    | Slightly heavier body text |
| typography_p/fontWeight/medium  | 500   | Medium  | Headings (displayLarge uses medium), section titles, badges |
| typography_p/fontWeight/bold    | 700   | Bold    | Rare — promotional banner text only |

### Additional Web Observations
- **12px base font size** on the web (not in the Figma token set but used for nav/breadcrumbs)
- **Negative letter-spacing (-2px)** on large display headings (web H1 at 41px, larger than Figma's 34px displayLarge — web may use responsive scaling)
- **No uppercase/text-transform** on navigation or buttons

### Text Conventions
- **No uppercase/text-transform** on navigation or buttons (lowercase-friendly approach)
- **Links are underlined by default** across most of the site (breadcrumbs, footer links, category links)
- **Negative letter-spacing (-2px)** on large display headings only
- **Line heights** are tight — typically 1.2–1.3x the font size

---

## Color Palette

### Figma Design Tokens — Semantic Colors (Boozt brand mode)
These are the official Panda design system color tokens:

| Figma Token         | Hex       | Alias From              | Usage |
|---------------------|-----------|-------------------------|-------|
| color/Primary       | `#241D26` | color/brand/boozt/900   | Primary CTA button background |
| color/OnPrimary     | `#FBF6F1` | color/brand/boozt/50    | Text on primary (warm off-white) |
| color/PrimaryContainer | `#302A32` | color/brand/boozt/700 | Pressed/container variant of primary |
| color/PrimaryFixedDim | `#4C4D52` | color/brand/boozt/500 | Dimmed primary variant |
| color/Secondary     | `#FFFFFF` | color/neutral/white     | Secondary button background |
| color/OnSecondary   | `#121212` | color/neutral/black     | Text on secondary |
| color/Background    | `#FFFFFF` | color/neutral/white     | Page background |
| color/OnBackground  | `#121212` | color/neutral/black     | Default text on background |
| color/Surface       | `#F5F5F5` | color/neutral/gray/50   | Surface/card background |
| color/OnSurface     | `#2A252C` | color/neutral/gray/800  | Text on surfaces |
| color/SurfaceVariant| `#E5E5E8` | color/neutral/gray/100  | Variant surface |
| color/OnSurfaceVariant | `#4C4D52` | color/neutral/gray/600 | Muted text, descriptions |
| color/surfaceContainer | `#EAE4DC` | color/brand/boozt/100 | Warm beige container (deal badges, sections) |
| color/Outline       | `#92949B` | color/neutral/gray/400  | Borders, outlines, dividers |
| color/Error         | `#E0001A` | color/utility/error/100 | Error states, sale prices |
| color/OnError       | `#FFFFFF` | color/neutral/white     | Text on error |
| color/ErrorContainer| `#F9E8EA` | color/utility/error/50  | Error background |
| color/ErrorVariant  | `#D83438` | color/utility/error/300 | Error variant |
| color/ErrorPressed  | `#C20017` | color/utility/error/500 | Error pressed state |
| color/Success       | `#0E881B` | color/utility/success/100 | Success states |
| color/SuccessContainer | `#E7F6EB` | color/utility/success/50 | Success background |
| color/Warning       | `#FCD34D` | color/utility/warning/100 | Warning states |
| color/WarningContainer | `#FEF3C7` | color/utility/warning/50 | Warning background |
| color/Info          | `#1580EB` | color/utility/info/100  | Info states |
| color/InfoContainer | `#E8F1F9` | color/utility/info/50   | Info background |

### Primitive Neutral Scale
| Variable                  | Hex       | Usage |
|---------------------------|-----------|-------|
| color/neutral/white       | `#FFFFFF` | Backgrounds, secondary buttons |
| color/neutral/black       | `#121212` | Default text (note: not pure black) |
| color/neutral/gray/50     | `#F5F5F5` | Surface backgrounds |
| color/neutral/gray/100    | `#E5E5E8` | Surface variant, light borders |
| color/neutral/gray/200    | (exists)  | Light dividers |
| color/neutral/gray/300    | (exists)  | Disabled borders |
| color/neutral/gray/400    | `#92949B` | Outline, input borders |
| color/neutral/gray/500    | (exists)  | Muted icons |
| color/neutral/gray/600    | `#4C4D52` | Muted text, descriptions |
| color/neutral/gray/800    | `#2A252C` | Strong text on surfaces |

### Brand Colors (Boozt)
| Variable                  | Hex       | Usage |
|---------------------------|-----------|-------|
| color/brand/boozt/50      | `#FBF6F1` | OnPrimary text (warm off-white) |
| color/brand/boozt/100     | `#EAE4DC` | Surface container, deal badge bg (warm beige) |
| color/brand/boozt/500     | `#4C4D52` | Primary dimmed |
| color/brand/boozt/700     | `#302A32` | Primary container |
| color/brand/boozt/900     | `#241D26` | Primary (CTA buttons) |

### Additional Web-Only Colors (not in Figma tokens)
| Usage                | Hex       | Notes |
|----------------------|-----------|-------|
| Sale price text      | `#D90225` | Red for discounted prices (web-specific, closest Figma: color/Error `#E0001A`) |
| Strikethrough price  | `#757575` | Muted old-price text |
| Announcement bar bg  | `#000000` | Pure black (web top bar) |
| Footer dark bar bg   | `#212121` | Dark footer section |
| Promo banner bg      | `#CC2B20` | Red partnership/campaign banners |

---

## Spacing & Layout

### Grid System
- **Max content width:** ~1200px (centered)
- **Page side padding:** 10–16px at header level, content inset ~190px for PLP sidebar
- **Product grid:** 3, 4, or 5 columns (user-selectable on PLP), default 4
- **Product card gap:** ~16px between cards
- **Recommendation carousels:** 6 items visible, horizontal scroll

### Spacing Scale — Figma Design Tokens (Primitives collection)
| Figma Token   | Default | Accessibility | Usage |
|---------------|---------|---------------|-------|
| spacing/0     | 0px     | 0px           | No spacing |
| spacing/xs    | 4px     | 8px           | Badge padding, tight gaps |
| spacing/s     | 8px     | 16px          | Small gaps, announcement bar padding |
| spacing/ms    | 12px    | 24px          | Medium-small gaps |
| spacing/m     | 16px    | 32px          | Card gaps, chip padding, general spacing, **default Padding** |
| spacing/l     | 24px    | 48px          | Section spacing, header bottom padding, **default Margin** |
| spacing/xl    | 32px    | 64px          | Main content padding, **default Gutter** |
| spacing/xxl   | 48px    | 92px          | Large section spacing, footer padding |

### Semantic Spacing Tokens (Brands collection)
| Figma Token      | Boozt Value | Maps To   |
|------------------|-------------|-----------|
| spacing/Padding  | 16px        | spacing/m |
| spacing/Margin   | 24px        | spacing/l |
| spacing/Gap      | 8px         | spacing/s |
| spacing/Gutter   | 32px        | spacing/xl|

### Corner Radius — Figma Design Tokens
| Figma Token                     | Default | Accessibility | Usage |
|---------------------------------|---------|---------------|-------|
| cornerRadius/corner-radius-sharp  | 0px   | 0px           | **Default for all Boozt UI** — buttons, inputs, cards, badges |
| cornerRadius/corner-radius-small  | 8px   | 16px          | Available but rarely used |
| cornerRadius/corner-radius-medium | 16px  | 32px          | Available but rarely used |
| cornerRadius/corner-radius-large  | 24px  | 48px          | Available but rarely used |

> **Important:** Boozt.com uses `corner-radius-sharp` (0px) for virtually everything. The other radii exist in the system for edge cases and other brand modes but are not characteristic of the Boozt visual identity.

---

## Components

### Buttons

#### Primary CTA (Add to Cart)
- **Background:** `#241D26` (near-black, slight purple warmth)
- **Text:** `#FBF6F1` (warm off-white)
- **Height:** 44px
- **Border radius:** 0px (completely square)
- **Font:** 13–15px, weight 400
- **Full width** within its container
- **Icon:** Shopping bag icon left of text

#### Secondary / Outline Buttons
- **Background:** transparent or white
- **Border:** 1px solid `#92949B`
- **Height:** 44px
- **Border radius:** 0px
- **Font:** 13px, weight 400

#### Wishlist Heart Button
- **Size:** ~44x44px touch target
- **Icon:** Outline heart SVG
- **Placed inline** next to CTA or overlaying product cards

### Size Selectors
- **Individual buttons** (not a dropdown)
- **Border:** 1px solid `#92949B`
- **Border radius:** 0px
- **Padding:** 0 16px
- **Height:** 44px
- **Width:** ~50px
- **Font:** 13px, weight 400
- **Active state:** Thicker/darker border

### Filter Chips (PLP)
- **Style:** Outlined rectangles with dropdown chevron
- **Border:** 1px solid border
- **Border radius:** 0px
- **Height:** ~36–44px
- **Font:** 12px, weight 400
- **Arranged horizontally** in a row, wrapping

### Tags / Badges
- **"Ny sæson":** `#DDDDDD` background, black text, 13px, no border radius, padding 0 16px — overlaid top-left on product card images
- **"% Deal":** `#EAE4DC` (warm beige) background, `#121212` text, 12px, padding 2px 4px — overlaid top-left on product card images
- **"sponsoreret":** Small text label above product card, 11px, muted

### Product Cards
- **Layout:** Vertical — image on top, info below
- **Image:** Full-width, light gray background (`#F5F5F5`), portrait aspect ratio (~3:4)
- **Brand name:** 13px, weight 400, black — with heart icon right-aligned
- **Product name:** 12–13px, weight 400, muted
- **Color swatches:** Small colored dots + size text inline
- **Price:** 13px, weight 400, black
- **Sale price:** `#D90225` (red), old price in `#757575` with line-through
- **No card borders, no shadows, no border radius**
- **Hover:** Image swap to alternate product photo

### Navigation

#### Top Announcement Bar
- **Background:** `#000000` (black)
- **Text:** white, centered, ~12px
- **Height:** ~40px
- **Content:** Promotional message with left/right carousel arrows
- **Rotating messages** (carousel behavior)

#### Primary Navigation
- **Position:** Below announcement bar
- **Layout:** Left-aligned categories + centered Boozt logo + right-aligned utility icons
- **Categories:** `Kvinder | Mænd | Børn | Sport | Skønhed | Bolig`
- **Font:** 12px, weight 400, black, no text-transform
- **Logo:** Centered, serif wordmark "Boozt"
- **Utility icons:** Search (with "Søg" label), Account, Recently viewed, Wishlist (with count badge), Cart (with count badge)

#### Secondary Navigation (Category Sub-nav)
- **Appears on:** Category landing pages and PLP
- **Layout:** Horizontal link row beneath primary nav
- **Links:** `Vis alt | Nyheder | Deals | Tøj | Sko | Undertøj | Tasker | Accessories | Brands | Inspiration | Designers | Skønhed | Sport`
- **Font:** 12px, weight 400
- **Active state:** Underlined
- **Separated by:** Border-bottom on the nav container

#### Breadcrumbs
- **Font:** 12px, black
- **Separator:** ` / `
- **Links underlined**
- **Includes back link:** `< Tilbage` (with left chevron)

### Footer

#### Upper Footer
- **Background:** white
- **Layout:** 4-column grid
- **Columns:** Hjælp & support | Mere fra Boozt | Udforsk Boozt | Følg Boozt
- **Column headings:** 20px, weight 500
- **Links:** 13px, black, not underlined
- **Social icons:** Facebook, Instagram, YouTube, TikTok — circular dark icons
- **App store badges:** Google Play + App Store buttons

#### Payment & Delivery Row
- **Payment icons row** (Visa, Mastercard, MobilePay, PayPal, etc.)
- **Delivery partner logos** (dao, GLS, instabox, bring)

#### Bottom Footer Bar
- **Background:** `#212121` (dark gray)
- **Padding:** 40px
- **Content:** Security badges, legal links, copyright
- **Text:** Light gray on dark, ~12px
- **Links:** Køsbetingelser | Tilgængelighed | Databeskyttelse og cookies

---

## Layout Patterns

### Homepage
The homepage is a vertical stack of curated content blocks. No sidebar, no product grid — it's purely editorial and navigational.

**Content blocks in order:**
1. **Hero banner** — Full-width lifestyle image (~100% viewport width within content area). Campaign text overlaid in large display type + "Shop nu →" CTA button (white bg, black text). Below the hero: two dark full-width buttons side by side ("Til hende →" / "Til ham →")
2. **Section divider** — Full-width warm beige/gray (`surfaceContainer` `#EAE4DC`) bar with centered heading text (e.g. "Udforsk det nyeste") in `displayMedium`
3. **Category cards** — 4-column grid of lifestyle images. Each card has a white label overlay in bottom-left corner with category name + arrow icon ("Kvinder", "Mænd", "Børn", "Bolig")
4. **Brand campaign block** — Full-width brand banner image (e.g. Lancôme) with brand logo overlay
5. **Curated editorial row** — 4-column lifestyle image grid linking to editorial content
6. **Partnership banner** — Full-width red (`#CC2B20`) background bar with Boozt logo, partner logo, campaign text, and arrow CTA
7. **Popular brands section** — Warm beige background, centered heading "Mest populære brands til hende", followed by 6-column × 2-row grid of outlined text-only brand buttons (e.g. "Ralph Lauren", "GANT", "Calvin Klein")
8. **Designer shop CTA** — Full-width lifestyle image with overlaid text: small subtitle + large "Designer Shop" heading + description + list of brand names (A.P.C, AMI, ROTATE, etc.)
9. **Brand logo row** — Horizontal row of brand wordmark logos (Malina, ROTATE, MUNTHE, FILIPPA K, etc.)

**No product cards on homepage** — it's entirely category/brand/editorial navigation.

### Category Landing Page
This is the first page shown when clicking a top-level category (e.g. "Kvinder"). It's a curated editorial page, not a product grid.

- **Structure:** Vertical stack of full-width content blocks
- **Secondary nav:** Horizontal category sub-navigation appears below primary nav (`Vis alt | Nyheder | Deals | Tøj | Sko | ...`)
- **Hero area:** Full-width promotional banner with campaign imagery + CTA
- **Category tiles:** 4-column grid of lifestyle images with white label overlays (e.g. "Sneakers", "Denim til den nye sæson", "Strik", "Forårsjakker") — each tile has a label + arrow icon in bottom-left
- **Promotional banner:** Full-width red or brand-colored partnership bar
- **Brand showcases:** 2-column large brand campaign images (e.g. Tommy Hilfiger, Levi's)
- **Quick-nav chips:** 2 rows of outlined text buttons for subcategories (e.g. "Nyheder", "Deals", "Kjoler", "Sko", "Jakker & Frakker")
- **Curated sections:** "Designer Shop" full-width CTA, brand logo row
- **No product grid** — this page drives navigation to subcategory PLPs

### Product Listing Page (PLP)
The main shopping grid. Two-panel layout with persistent sidebar.

#### Overall Layout
- **Two-column structure:** Left sidebar (~190px) + main content area
- **No full-width hero** — jumps straight to browsing

#### Left Sidebar — Category Tree
- **Position:** Fixed left column, persistent while scrolling
- **Content:** Hierarchical category tree with product counts
- **Structure:**
  - Top-level category bold with total count (e.g. "**Tøj** 31 621")
  - Current category bold (e.g. "**Kjoler** 4 355")
  - Subcategories indented below (e.g. "Festkjoler 954", "Maxi kjoler 802", "Midi kjoler 1 735")
  - Sibling categories listed below (e.g. "Strik 3 038", "Jakker & Frakker 2 925")
- **Font:** 13px, weight 400, black. Active/current category has weight 500
- **Counts:** Inline after category name, muted color
- **Interaction:** Click to navigate to subcategory PLP

#### Main Content Area
- **Breadcrumbs:** Top of main area (`Kvinder / Tøj / Kjoler /`)
- **Page heading:** Category name as H1 (e.g. "Kjoler") — `displayLarge` token
- **Filter row:** Horizontal row of filter chips below heading
  - Available filters: `Farve | Brands | Størrelse | Pris | Længde | Ærmelængde | Materiale | Krave | Made with care | Sortering`
  - Each filter is a button with dropdown chevron
  - Click opens a dropdown panel with multi-select checkboxes
  - Active filters show as removable chips
- **Product count:** Below filters, left-aligned (e.g. "4361 produkter")
- **Display density toggle:** Right-aligned next to count — `3 | **4** | 5` column options
- **Personalization banner:** Light blue/beige background bar with green toggle — "Hej [Name], Dine rabatter er aktive" — appears when user has active club discounts
- **Sponsored labels:** "sponsoreret" text appears above sponsored product cards, 11px muted

#### Product Grid
- **Default:** 4 columns
- **Selectable:** 3, 4, or 5 columns
- **Gap:** ~16px (`spacing/m`)
- **Cards:** See Product Cards component spec above
- **Badges overlay:** Top-left of product image ("Ny sæson", "35% Deal", etc.)
- **Infinite scroll or pagination** (lazy loading as user scrolls)

#### Below Grid
- **"Besøgte produkter"** — Recently viewed products horizontal carousel
- **Footer**

### Product Detail Page (PDP)
Split layout with images left and product info right.

#### Overall Layout
- **Two-panel structure:** Images (~60% width) + product info (~40% width)
- **Back navigation:** `< Tilbage` link with left chevron above images
- **Breadcrumbs:** Above back link (`Kvinder / Tøj / Kjoler /`)

#### Left Panel — Image Gallery
- **Layout:** 2-column image grid
- **Images:** All product angles shown vertically — typically 4–8 images
- **Image aspect:** Portrait, white/light gray background
- **Row structure:** 2 images per row, equal width
- **Includes:** Full outfit shots, detail close-ups (fabric, collar, label)
- **No lightbox** — images are already large

#### Right Panel — Product Info (Sticky)
This panel sticks to the viewport as the user scrolls through images.

Content order from top to bottom:
1. **Badge:** "Ny sæson" tag if applicable
2. **Brand name:** `titleLarge` (17px), weight 400
3. **Product name + category:** Subtitle text, e.g. "Belted Striped Cotton Shirtdress - Midi kjoler"
4. **Price:** `titleMedium` (15px), weight 500 — with info circle icon for price breakdown
5. **Club benefits:** "Mine Club Boozt fordele" section with discount badges (e.g. "Sport 15%")
6. **Color selector:** "Farve: [color name]" label + row of thumbnail images showing the product in each color. Selected color has a blue checkmark overlay and thicker border
7. **Size selector:** "Vælg størrelse (EU)" label with tab to "Brand størrelser". Row of square buttons (e.g. "32 | 34 | 36 | 38 | 40"). Unavailable sizes are grayed out
8. **Size guide link:** "Størrelsesguide >" text link
9. **Add to cart row:** Full-width dark CTA button "Læg i kurv" with shopping bag icon + separate wishlist heart button to the right
10. **Delivery info:** Truck icon + "Hurtig levering 1-2 hverdage" + "Fri fragt på ordrer over 499 kr*" with "Læs mere" link
11. **Return info:** Return icon + "Gratis retur" + "Gratis retur* 30 dage" with "Læs mere" link
12. **Accordion sections** (expandable, chevron toggle):
    - "Produktinformation" (default open) — Material, product description, key features, characteristics
    - "Om brandet" (collapsed)
    - "Levering & Returnering" (collapsed)
13. **Producer info:** Manufacturer details, address, SKU/barcode
14. **"Se mere" tag chips:** Related keyword links in outlined chip buttons (e.g. "Polo ralph lauren", "Kjoler", "Tøj", "Hverdags stil")

#### Below Product
- **"Besøgte produkter"** — Recently viewed horizontal carousel (small cards)
- **"Relaterede produkter"** — Related products carousel with pagination ("1 / 2") and "Se alle" link
- **"Mere fra [Brand]"** — Brand-specific recommendations carousel
- **Footer**

---

## Mobile Web Layout (< 768px)

The site is fully responsive. Key breakpoints: `768px` (tablet/mobile transition), `576px`, `374px`. Below 768px the layout transforms significantly.

### Responsive Breakpoints
| Breakpoint | Behavior |
|-----------|----------|
| ≥ 1280px  | Full desktop layout |
| 960–1279px | Desktop, narrower content |
| 768–959px | Tablet — some layout shifts |
| < 768px   | **Mobile layout** — single column, hamburger nav, bottom bar |
| ≥ 374px   | Minor phone-size adjustments |

### Mobile Header
Replaces the full desktop navigation with a compact mobile header:

- **Layout:** Single row — `☰ hamburger | Boozt logo (centered) | 🔍 search | 👤 account`
- **Hamburger (☰):** Left-aligned, opens full-screen side menu drawer
- **Logo:** Centered serif wordmark "Boozt"
- **Icons:** Search and Account only — cart/wishlist move to bottom nav
- **Announcement bar:** Still present above header, scrollable carousel with promo messages
- **App install banner:** Smart banner prompting app download ("Boozt App ★★★★ 4.5 — Installer"), dismissible with X
- **No category links** in header — all navigation moves to hamburger side menu

### Mobile Side Menu (Hamburger Drawer)
Full-screen slide-in panel from the left. Replaces desktop's horizontal category nav.

- **Category list:** Vertical list with category name + product count (e.g. "Klänningar 1234", "Västar 546")
- **Hierarchy:** Top-level shows subcategories of current gender/department context
- **Each row:** Category name left-aligned, count right-aligned, chevron for drill-down
- **Favorites section:** 2-column grid of recently favorited product thumbnails + "View all" button
- **Recently Viewed section:** 2-column grid of recently viewed product thumbnails + "View all" button
- **Close:** X button or swipe to dismiss

### Mobile Bottom Navigation Bar
Fixed bottom tab bar, always visible. This is a key mobile-specific component (Figma component: "App Bottom navigation", 375×176px).

- **Position:** Fixed to bottom of viewport
- **Background:** White with top border/divider
- **5 tab icons equally spaced:**
  1. **B** (Boozt logo) — Home
  2. **🔍≡** (Search + filter icon) — Search/Browse
  3. **🛒** (Shopping bag) — Cart
  4. **♡** (Heart) — Wishlist
  5. **👤** (Person) — Account
- **Icons:** Outlined style, muted gray when inactive
- **Active state:** Darker/filled icon
- **Above the tab bar:** Optional contextual info bar (e.g. "Label / Value" for promotions or delivery info)
- **Home indicator:** iOS-style bottom bar below tabs

### Mobile Homepage
Same content blocks as desktop but adapted to single-column:

- **Hero banner:** Full-width, single image with overlay text + right arrow for carousel
- **CTAs:** "Til hende →" and "Til ham →" stacked vertically (not side by side)
- **Section divider:** Full-width warm beige bar with centered heading
- **Category cards:** 2×2 grid (instead of 4-column)
- **Brand campaign blocks:** Full-width stacked (instead of 2-column)
- **Brand chips:** 2-column grid (instead of 6-column)
- **Designer shop CTA:** Full-width image with overlay text
- **Brand logo row:** Horizontal scroll carousel

### Mobile Category Landing Page
- **Secondary nav:** Horizontal scrollable chip row (instead of fixed horizontal links)
- **Category tiles:** 2-column grid (instead of 4-column)
- **Brand showcases:** Full-width stacked
- **Quick-nav chips:** 2-column grid, horizontally scrollable

### Mobile Product Listing Page (PLP)
Major layout change — **no sidebar**, filters become action buttons.

#### Header Area
- **Breadcrumbs:** Still present (`Kvinder / Tøj /`)
- **Page heading:** Category name as H1, slightly smaller than desktop
- **Product count:** Below heading (e.g. "4364 produkter")

#### Filter & Sort Row
- **Two action buttons** side by side (replacing desktop's horizontal filter chips):
  - **"Filt..." (Filter)** — icon + text, opens full-screen filter panel as a sheet/modal
  - **"So..." (Sortering)** — icon + text, opens sort options
- **Below:** Horizontal scrollable row of quick-filter chips: "Kategorier 🔳", "Produktfarve", "Mærker", "Videre..."
- **No left sidebar** — category tree is accessible via "Kategorier" chip or hamburger menu

#### Product Grid
- **2 columns** (fixed, no density toggle on mobile)
- **Gap:** ~8px (`spacing/s`)
- **Product cards:** Same info structure as desktop but more compact
  - Brand name + heart icon
  - Product name (may truncate)
  - Size/color info
  - Price
- **Personalization banner:** Full-width, same as desktop but stacked text

### Mobile Product Detail Page (PDP)
Transforms from side-by-side desktop layout to fully stacked single column.

#### Image Gallery
- **Full-width horizontal swipeable carousel** (replaces desktop's 2-column grid)
- **Dot pagination** at bottom of image (indicates current photo position)
- **Swipe left/right** to browse product photos
- **Single image visible at a time** (not grid)

#### Product Info (Below Image)
All product info stacks vertically below the image carousel — **not sticky**, just scrolls naturally.

Content order (same as desktop but stacked):
1. Badge, Brand name, Product name + category
2. Price
3. Club benefits
4. Color selector (thumbnail row, horizontally scrollable if many)
5. Size selector (button row, wraps to multiple lines if needed)
6. Size guide link
7. **"Læg i kurv" CTA** — Full-width dark button
8. **"Gem som favorit"** — Full-width text link below CTA (replaces desktop's inline heart button)
9. Delivery info
10. Return info
11. Accordion sections (Produktinformation, Om brandet, Levering & Returnering)
12. "Se mere" tag chips

#### Below Product
- **Recommendation carousels:** 2-column scrollable rows (same sections as desktop)
- **Trustpilot review section:** Star rating + review snippet
- **Footer**

### Mobile Footer
Transforms from 4-column grid to single-column accordion:

- **Social icons:** Row of circular icons (Facebook, Instagram, YouTube, TikTok) at top
- **App download:** "Hent vores app" with store badges
- **Collapsible sections** (accordion with chevrons):
  - "Mere fra Boozt" (collapsed)
  - "Udforsk Boozt" (collapsed)
  - "Betalingsmuligheder" (collapsed)
  - "Leveringsmuligheder" (collapsed)
  - "Navigation Language" (collapsed)
- **Bottom bar:** Same dark `#212121` background with security badges and legal links

### Mobile-Specific Interaction Patterns
- **Swipe gestures:** Product image carousel, recommendation carousels, announcement bar
- **Pull-to-refresh:** Standard browser behavior
- **Touch targets:** Minimum 44px height maintained (same as desktop)
- **Filter panel:** Opens as full-screen overlay/sheet (not dropdown)
- **Sort panel:** Opens as bottom sheet
- **No hover states** — tap-only interactions
- **Sticky header:** Header stays visible on scroll-up, hides on scroll-down
- **Bottom nav persists** across all pages

---

## Interaction Patterns

- **No border radius anywhere** — All buttons, inputs, cards, badges, and containers use sharp 0px corners
- **Underlined links** are the standard for text links across the site
- **Hover on product cards:** Image swaps to alternate photo
- **Filter dropdowns:** Click to expand, multi-select with checkboxes
- **Carousel navigation:** Left/right arrows + pagination indicator ("1 / 2")
- **Expandable sections:** Accordion with chevron icon (down = closed, up = open)
- **Sticky product info** on PDP — scrolls with the user on the right panel
- **"Tilbage" (Back) link** with left chevron at top of PDP
- **Count badges** on wishlist and cart icons in header (small filled circles with number)
- **Chat widget** — Floating bottom-right with notification badge

---

## Design System Architecture (Panda)

### Variable Collections
The Figma design system uses 3 variable collections with 182 total variables:

1. **Primitives** (82 vars) — Raw values for colors, spacing, typography, corner radii, icon sizes. Has "Default" and "Accessibility check" modes (accessibility mode doubles most spacing/size values).
2. **Brands** (94 vars) — Semantic tokens that alias to primitives, with 4 brand modes: Boozt, Booztlet, BooztPay, ClubBoozt. This is where brand-specific colors and typography mapping lives.
3. **Platform** (6 vars) — Platform-specific overrides with modes: App, Mobile, Desktop, Accessibility - Large.

### Available Component Categories
The design system includes these component pages:
- **Buttons:** Button, Icon Button, Swatch Button (with base shape and state variants)
- **Navigation:** Breadcrumbs, Bottom Nav, Top Nav, Side Menu, Tabs, Recently Viewed Sticky
- **Inputs & Selection:** Checkboxes, Color Selector, Dropdown, Input Fields, Radio Buttons, Slider, Toggles
- **Data Display:** Accordion, MDV, Rows, Splashes, Tables, Tags
- **Feedback:** Banners, Informative Banners, Empty States, Toast, Progress Bar
- **Layout:** Dividers, Sheets & Modals, Footer, Pages
- **Commerce:** Horizontal Product Cards, Vertical Product Cards, Product Slider, Image, Cards, Payment Details
- **Club:** Club elements, Club Dashboard, ClubTagTiers

---

## Design Principles (for AI tools)

1. **Sharp corners everywhere.** Use `cornerRadius/corner-radius-sharp` (0px). The system has other radii available but Boozt's identity is defined by sharp corners on all buttons, inputs, cards, badges, and containers.
2. **Minimal decoration.** No shadows, no gradients, no rounded shapes. Let whitespace and typography do the work.
3. **High information density** on listing pages — pack in products without visual clutter.
4. **Warm neutrals** for accent backgrounds — beige/sand tones (`#EAE4DC`, `#D1CDC7`), not cold grays.
5. **Near-black for CTAs** — Use `color/Primary` (`#241D26`, aliased from `color/brand/boozt/900`) with `color/OnPrimary` (`#FBF6F1`) text. It's not pure black — it has a subtle warm purple undertone. The text is not pure white — it's a warm off-white.
6. **Red for sales only** — `#D90225` is reserved exclusively for discounted prices and promotional banners.
7. **Typography is subtle** — Weights stay light (400–500), sizes stay small (12–15px for most UI), only headings get large.
8. **Content-first layout** — The product image is the hero. UI chrome is minimal and stays out of the way.
9. **Scandinavian restraint** — When in doubt, remove. Less color, less weight, less decoration.
10. **Consistency in height** — Interactive elements (buttons, size selectors, filter chips) are uniformly 44px tall.
11. **Neutral black is not pure black** — The design system's `color/neutral/black` is `#121212`, not `#000000`. Use this for body text and UI elements. Pure `#000000` is only for the announcement bar background.
12. **Warm accent, not cold gray** — The `surfaceContainer` token (`#EAE4DC`) is a warm beige, not a cold gray. This warmth is intentional and distinguishes Boozt from sterile e-commerce aesthetics.
13. **Multi-brand aware** — The design system supports Boozt, Booztlet, BooztPay, and ClubBoozt via variable modes. When designing, always specify which brand context applies.
14. **Accessibility scaling** — The Primitives collection has an "Accessibility check" mode that approximately doubles all spacing and font size values. Keep this in mind when building responsive components.
