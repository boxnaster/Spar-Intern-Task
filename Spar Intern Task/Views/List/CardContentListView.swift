//
//  CardContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardContentListView: View {

    let foodProduct: FoodProduct
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void
    let isFavorite: Bool
    let toggleFavorite: () -> Void
    let isInShopList: Bool
    let toggleShopList: () -> Void
    let isInCart: () -> Bool
    let getProductQuantityInCart: () -> Int

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    RatingListView(foodProductRating: foodProduct.rating, foodProductReviewsCount: foodProduct.reviewsCount)
                    DescriptionListView(foodProductName: foodProduct.name, foodProductCountry: foodProduct.country)
                }
                ActionListView(isFavorite: isFavorite, toggleFavorite: toggleFavorite, isInShopList: isInShopList, toggleShopList: toggleShopList)
            }
            Spacer()
            if isInCart() {
                QuantityTypePickerView()
                QuantityPickerView(price: foodProduct.price, onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart, getProductQuantityInCart: getProductQuantityInCart)
            } else {
                HStack() {
                    PriceView(foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice)
                    Spacer()
                    AddToCartButtonView(foodProductId: foodProduct.id, onAddToCart: onAddToCart)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 144)
    }
}

#Preview {
    CardContentListView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), rating: 3.0, reviewsCount: 12, price: 199.90, oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9))), onAddToCart: { }, onRemoveFromCart: { }, isFavorite: true, toggleFavorite: { }, isInShopList: true, toggleShopList: { }, isInCart: {return true}, getProductQuantityInCart: {return 4})
}
