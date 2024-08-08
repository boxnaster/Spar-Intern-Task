//
//  CardContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardContentListView: View {

    @StateObject private var cardContentViewModel = CardContentViewModel()
    let foodProduct: FoodProduct
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    RatingListView(foodProductRating: foodProduct.rating, foodProductReviewsCount: foodProduct.reviewsCount)
                    DescriptionListView(foodProductName: foodProduct.name, foodProductCountry: foodProduct.country)
                }
                ActionListView(isInTheShopList: foodProduct.isInTheShopList, isFavorite: foodProduct.isFavorite)
            }
            Spacer()
            if cardContentViewModel.isProductAddedToCart {
                QuantityTypePickerView()
                QuantityPickerView(onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart)
            } else {
                HStack() {
                    PriceView(foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice)
                    Spacer()
                    AddToCartButtonView(foodProductId: foodProduct.id, onAddToCart: addToCart)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 144)
    }

    func addToCart() {
        onAddToCart()
        cardContentViewModel.toggleMode()
    }
}

#Preview {
    CardContentListView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), isFavorite: true, isInTheShopList: false, rating: 3.0, reviewsCount: 12, price: 199.90,         oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)), onAddToCart: { }, onRemoveFromCart: { })
}
