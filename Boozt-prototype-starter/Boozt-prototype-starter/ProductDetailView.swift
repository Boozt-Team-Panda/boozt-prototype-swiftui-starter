import SwiftUI

// MARK: - Models

struct ShoeProduct: Identifiable {
    let id: String
    let brand: String
    let name: String
    let category: String
    let price: Int
    let originalPrice: Int?
    let description: String
    let material: String
    let colorOptions: [ProductColorOption]
    let sizes: [ShoeSize]
    let imageCount: Int

    var isOnSale: Bool { originalPrice != nil }
}

extension ShoeProduct {
    static let mock = ShoeProduct(
        id: "NB-1080v13-001",
        brand: "New Balance",
        name: "Fresh Foam X 1080v13",
        category: "Løbesko",
        price: 1099,
        originalPrice: 1499,
        description: "Fresh Foam X 1080v13 er designet til langdistanceløb med maksimal komfort. Den ikoniske Fresh Foam X-mellemsål giver enestående dæmpning, mens det bløde engineered mesh-overdel sikrer åndbarhed og optimal pasform. Med opdateret geometri opnås en mere responsiv og naturlig løbegang.",
        material: "Overdel: 100% Engineered mesh\nMellemsål: Fresh Foam X\nSål: NDurance Rubber",
        colorOptions: [
            ProductColorOption(id: "sort", name: "Sort", hexColor: 0x1A1A1A),
            ProductColorOption(id: "hvid", name: "Hvid", hexColor: 0xE0DEDA),
            ProductColorOption(id: "graa", name: "Grå", hexColor: 0x8A8A8A)
        ],
        sizes: [
            ShoeSize(eu: "36", isAvailable: false),
            ShoeSize(eu: "37", isAvailable: true),
            ShoeSize(eu: "38", isAvailable: true),
            ShoeSize(eu: "39", isAvailable: true),
            ShoeSize(eu: "40", isAvailable: true),
            ShoeSize(eu: "41", isAvailable: true),
            ShoeSize(eu: "42", isAvailable: false),
            ShoeSize(eu: "43", isAvailable: true),
            ShoeSize(eu: "44", isAvailable: false),
            ShoeSize(eu: "45", isAvailable: true)
        ],
        imageCount: 6
    )
}

struct ProductColorOption: Identifiable {
    let id: String
    let name: String
    let hexColor: UInt

    var swiftUIColor: Color { Color(hex: hexColor) }
}

struct ShoeSize: Identifiable {
    var id: String { eu }
    let eu: String
    let isAvailable: Bool
}

// MARK: - ViewModel

@Observable
class ProductDetailViewModel {
    var product: ShoeProduct
    var selectedColorId: String
    var selectedSizeEU: String?
    var isFavorited = false
    var currentImageIndex = 0
    var expandedSections: Set<String> = ["produktinformation"]
    var addedToCart = false

    init(product: ShoeProduct) {
        self.product = product
        self.selectedColorId = product.colorOptions.first?.id ?? ""
    }

    var selectedColor: ProductColorOption? {
        product.colorOptions.first { $0.id == selectedColorId }
    }

    func toggleSection(_ key: String) {
        if expandedSections.contains(key) {
            expandedSections.remove(key)
        } else {
            expandedSections.insert(key)
        }
    }

    func toggleFavorite() {
        isFavorited.toggle()
    }

    func addToCart() {
        guard selectedSizeEU != nil else { return }
        addedToCart = true
    }
}

// MARK: - Main View

struct ProductDetailView: View {
    @State private var viewModel: ProductDetailViewModel

    init(product: ShoeProduct = .mock) {
        _viewModel = State(initialValue: ProductDetailViewModel(product: product))
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("Kvinder  /  Sko  /  Løbesko")
                    .font(.booztNavigation)
                    .foregroundColor(.booztOnSurfaceVariant)
                    .padding(.horizontal, Spacing.m)
                    .padding(.vertical, Spacing.s)

                ProductImageCarousel(viewModel: viewModel)

                VStack(alignment: .leading, spacing: Spacing.l) {
                    ProductHeaderSection(viewModel: viewModel)
                    Divider()
                    ColorSelectorRow(viewModel: viewModel)
                    SizeSelectorSection(viewModel: viewModel)
                    AddToCartSection(viewModel: viewModel)
                    Divider()
                    DeliveryInfoSection()
                    Divider()
                    AccordionGroup(viewModel: viewModel)
                    TagChipsSection()
                }
                .padding(.horizontal, Spacing.m)
                .padding(.top, Spacing.m)
                .padding(.bottom, Spacing.xxl)
            }
        }
        .background(Color.booztBackground)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button { viewModel.toggleFavorite() } label: {
                    Image(systemName: viewModel.isFavorited ? "heart.fill" : "heart")
                        .foregroundColor(.booztOnBackground)
                }
            }
        }
    }
}

// MARK: - Image Carousel

private let placeholderBackgrounds: [Color] = [
    Color(hex: 0xF0EDE8),
    Color(hex: 0xE8E8E8),
    Color(hex: 0xF5F2EF),
    Color(hex: 0xEAE4DC),
    Color(hex: 0xE5E5E8),
    Color(hex: 0xF0F0EE)
]

struct ProductImageCarousel: View {
    @Bindable var viewModel: ProductDetailViewModel

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $viewModel.currentImageIndex) {
                ForEach(0..<viewModel.product.imageCount, id: \.self) { index in
                    ZStack {
                        placeholderBackgrounds[index % placeholderBackgrounds.count]
                        VStack(spacing: Spacing.s) {
                            Image(systemName: "shoeprints.fill")
                                .font(.system(size: 80))
                                .foregroundColor(
                                    Color(hex: viewModel.selectedColor?.hexColor ?? 0x8A8A8A)
                                        .opacity(0.4)
                                )
                            Text(viewModel.product.brand)
                                .font(.booztLabelSmall)
                                .foregroundColor(.booztNeutralGray400)
                        }
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 380)

            HStack(spacing: Spacing.xs) {
                ForEach(0..<viewModel.product.imageCount, id: \.self) { index in
                    Circle()
                        .fill(index == viewModel.currentImageIndex
                              ? Color.booztOnBackground
                              : Color.booztNeutralGray400)
                        .frame(width: 6, height: 6)
                }
            }
            .padding(.bottom, Spacing.s)
        }
    }
}

// MARK: - Product Header

struct ProductHeaderSection: View {
    let viewModel: ProductDetailViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.xs) {
            Text("Ny sæson")
                .font(.booztLabelSmall)
                .foregroundColor(.booztOnBackground)
                .padding(.horizontal, Spacing.s)
                .padding(.vertical, Spacing.xs)
                .background(Color.booztSurfaceContainer)

            Text(viewModel.product.brand)
                .font(.booztTitleLarge)
                .foregroundColor(.booztOnBackground)

            Text("\(viewModel.product.name) – \(viewModel.product.category)")
                .font(.booztBodyMedium)
                .foregroundColor(.booztOnSurfaceVariant)

            HStack(alignment: .firstTextBaseline, spacing: Spacing.s) {
                Text("\(viewModel.product.price) DKK")
                    .font(.booztTitleMedium)
                    .fontWeight(.medium)
                    .foregroundColor(viewModel.product.isOnSale ? .booztSalePrice : .booztOnBackground)

                if let original = viewModel.product.originalPrice {
                    Text("\(original) DKK")
                        .font(.booztBodySmall)
                        .strikethrough()
                        .foregroundColor(.booztStrikethroughPrice)
                }

                Image(systemName: "info.circle")
                    .font(.booztBodySmall)
                    .foregroundColor(.booztOnSurfaceVariant)
            }
        }
    }
}

// MARK: - Color Selector

struct ColorSelectorRow: View {
    let viewModel: ProductDetailViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.s) {
            HStack(spacing: Spacing.xs) {
                Text("Farve:")
                    .font(.booztBodySmall)
                    .foregroundColor(.booztOnSurfaceVariant)
                Text(viewModel.selectedColor?.name ?? "")
                    .font(.booztBodySmall)
                    .fontWeight(.medium)
                    .foregroundColor(.booztOnBackground)
            }

            HStack(spacing: Spacing.s) {
                ForEach(viewModel.product.colorOptions) { option in
                    let isSelected = option.id == viewModel.selectedColorId
                    ZStack {
                        Rectangle()
                            .fill(option.swiftUIColor)
                            .frame(width: 44, height: 44)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        isSelected ? Color.booztPrimary : Color.booztOutline,
                                        lineWidth: isSelected ? 2 : 1
                                    )
                            )
                        if isSelected {
                            Image(systemName: "checkmark")
                                .font(.system(size: 11, weight: .semibold))
                                .foregroundColor(option.hexColor > 0x888888 ? .booztOnBackground : .white)
                        }
                    }
                    .onTapGesture {
                        viewModel.selectedColorId = option.id
                    }
                }
            }
        }
    }
}

// MARK: - Size Selector

struct SizeSelectorSection: View {
    let viewModel: ProductDetailViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.s) {
            Text("Vælg størrelse (EU)")
                .font(.booztBodySmall)
                .foregroundColor(.booztOnSurfaceVariant)

            LazyVGrid(
                columns: Array(repeating: GridItem(.fixed(ComponentSize.sizeButtonWidth), spacing: Spacing.s), count: 5),
                spacing: Spacing.s
            ) {
                ForEach(viewModel.product.sizes) { size in
                    SizeButton(
                        size: size,
                        isSelected: viewModel.selectedSizeEU == size.eu
                    ) {
                        if size.isAvailable {
                            viewModel.selectedSizeEU = size.eu
                        }
                    }
                }
            }

            Button {} label: {
                Text("Størrelsesguide >")
                    .font(.booztBodySmall)
                    .foregroundColor(.booztOnBackground)
                    .underline()
            }
        }
    }
}

struct SizeButton: View {
    let size: ShoeSize
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(size.eu)
                .font(.booztBodySmall)
                .foregroundColor(foregroundColor)
                .frame(width: ComponentSize.sizeButtonWidth, height: ComponentSize.interactiveHeight)
                .background(backgroundColor)
                .overlay(
                    Rectangle()
                        .stroke(borderColor, lineWidth: isSelected ? 2 : 1)
                )
        }
        .disabled(!size.isAvailable)
    }

    private var foregroundColor: Color {
        if !size.isAvailable { return .booztNeutralGray400 }
        return isSelected ? .booztOnPrimary : .booztOnBackground
    }

    private var backgroundColor: Color {
        if !size.isAvailable { return Color.booztSurface }
        return isSelected ? .booztPrimary : .clear
    }

    private var borderColor: Color {
        if !size.isAvailable { return .booztNeutralGray100 }
        return isSelected ? .booztPrimary : .booztOutline
    }
}

// MARK: - Add to Cart

struct AddToCartSection: View {
    let viewModel: ProductDetailViewModel

    var body: some View {
        VStack(spacing: Spacing.s) {
            Button { viewModel.addToCart() } label: {
                HStack(spacing: Spacing.s) {
                    Image(systemName: viewModel.addedToCart ? "bag.fill" : "bag")
                    Text(viewModel.addedToCart ? "Lagt i kurv" : "Læg i kurv")
                        .fontWeight(.medium)
                }
                .font(.booztTitleMedium)
                .foregroundColor(.booztOnPrimary)
                .frame(maxWidth: .infinity)
                .frame(height: ComponentSize.interactiveHeight)
                .background(viewModel.selectedSizeEU == nil
                             ? Color.booztPrimaryFixedDim
                             : Color.booztPrimary)
            }
            .disabled(viewModel.selectedSizeEU == nil)

            if viewModel.selectedSizeEU == nil {
                Text("Vælg en størrelse for at lægge i kurv")
                    .font(.booztLabelSmall)
                    .foregroundColor(.booztError)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }

            Button { viewModel.toggleFavorite() } label: {
                HStack(spacing: Spacing.xs) {
                    Image(systemName: viewModel.isFavorited ? "heart.fill" : "heart")
                    Text(viewModel.isFavorited ? "Gemt som favorit" : "Gem som favorit")
                }
                .font(.booztBodyMedium)
                .foregroundColor(.booztOnBackground)
                .underline()
                .frame(maxWidth: .infinity)
                .frame(height: ComponentSize.interactiveHeight)
            }
        }
    }
}

// MARK: - Delivery Info

struct DeliveryInfoSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.s) {
            HStack(alignment: .top, spacing: Spacing.s) {
                Image(systemName: "truck.box")
                    .font(.booztBodyMedium)
                    .foregroundColor(.booztOnBackground)
                    .frame(width: 20, alignment: .center)
                VStack(alignment: .leading, spacing: 2) {
                    Text("Hurtig levering 1-2 hverdage")
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnBackground)
                    HStack(spacing: Spacing.xs) {
                        Text("Fri fragt på ordrer over 499 kr*")
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnSurfaceVariant)
                        Text("Læs mere")
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnBackground)
                            .underline()
                    }
                }
            }

            HStack(alignment: .top, spacing: Spacing.s) {
                Image(systemName: "arrow.uturn.left")
                    .font(.booztBodyMedium)
                    .foregroundColor(.booztOnBackground)
                    .frame(width: 20, alignment: .center)
                VStack(alignment: .leading, spacing: 2) {
                    Text("Gratis retur")
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnBackground)
                    HStack(spacing: Spacing.xs) {
                        Text("Gratis retur* 30 dage")
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnSurfaceVariant)
                        Text("Læs mere")
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnBackground)
                            .underline()
                    }
                }
            }
        }
    }
}

// MARK: - Accordion

struct AccordionGroup: View {
    let viewModel: ProductDetailViewModel

    var body: some View {
        VStack(spacing: 0) {
            AccordionSection(key: "produktinformation", title: "Produktinformation", viewModel: viewModel) {
                VStack(alignment: .leading, spacing: Spacing.s) {
                    Text(viewModel.product.description)
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnSurfaceVariant)

                    Divider()

                    Text("Materiale")
                        .font(.booztBodySmall)
                        .fontWeight(.medium)
                        .foregroundColor(.booztOnBackground)
                    Text(viewModel.product.material)
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnSurfaceVariant)

                    Divider()

                    HStack {
                        Text("Varenr.")
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnSurfaceVariant)
                        Spacer()
                        Text(viewModel.product.id)
                            .font(.booztBodySmall)
                            .foregroundColor(.booztOnBackground)
                    }
                }
            }

            Divider()

            AccordionSection(key: "om-brandet", title: "Om brandet", viewModel: viewModel) {
                Text("New Balance er en global sportsmærkevare grundlagt i Boston i 1906. Brandet er kendt for høj komfort, teknisk innovation og ikonisk design inden for løbesko og sneakers.")
                    .font(.booztBodySmall)
                    .foregroundColor(.booztOnSurfaceVariant)
            }

            Divider()

            AccordionSection(key: "levering", title: "Levering & Returnering", viewModel: viewModel) {
                VStack(alignment: .leading, spacing: Spacing.s) {
                    Text("Levering: 1-2 hverdage ved bestilling inden kl. 14:00 på hverdage.")
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnSurfaceVariant)
                    Text("Returnering: Gratis retur inden for 30 dage via medfølgende returlabel.")
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnSurfaceVariant)
                }
            }

            Divider()
        }
    }
}

struct AccordionSection<Content: View>: View {
    let key: String
    let title: String
    let viewModel: ProductDetailViewModel
    @ViewBuilder let content: () -> Content

    private var isExpanded: Bool { viewModel.expandedSections.contains(key) }

    var body: some View {
        VStack(spacing: 0) {
            Button {
                viewModel.toggleSection(key)
            } label: {
                HStack {
                    Text(title)
                        .font(.booztBodyMedium)
                        .foregroundColor(.booztOnBackground)
                    Spacer()
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .font(.booztBodySmall)
                        .foregroundColor(.booztOnSurfaceVariant)
                }
                .frame(minHeight: ComponentSize.interactiveHeight)
                .contentShape(Rectangle())
            }

            if isExpanded {
                content()
                    .padding(.bottom, Spacing.m)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

// MARK: - Tag Chips

struct TagChipsSection: View {
    private let tags = ["New Balance", "Løbesko", "Sneakers", "Sko", "Sport", "Fresh Foam"]

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.s) {
            Text("Se mere")
                .font(.booztBodySmall)
                .foregroundColor(.booztOnSurfaceVariant)

            VStack(alignment: .leading, spacing: Spacing.s) {
                HStack(spacing: Spacing.s) {
                    ForEach(tags.prefix(3), id: \.self) { TagChip(label: $0) }
                }
                HStack(spacing: Spacing.s) {
                    ForEach(Array(tags.dropFirst(3)), id: \.self) { TagChip(label: $0) }
                }
            }
        }
        .padding(.bottom, Spacing.l)
    }
}

struct TagChip: View {
    let label: String

    var body: some View {
        Text(label)
            .font(.booztBodySmall)
            .foregroundColor(.booztOnBackground)
            .padding(.horizontal, Spacing.m)
            .padding(.vertical, Spacing.xs)
            .overlay(
                Rectangle()
                    .stroke(Color.booztOutline, lineWidth: 1)
            )
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        ProductDetailView(product: .mock)
    }
}
