//
//  FoodCardGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct FoodCardGridView: View {

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
        VStack {
            CardImageGridView(foodProductImage: foodProduct.image, foodProductRating: foodProduct.rating, foodProductBadge: foodProduct.badge, isFavorite: isFavorite, foodProductDiscount: foodProduct.discount, toggleFavorite: toggleFavorite, isInShopList: isInShopList, toggleShopList: toggleShopList)
            Spacer()
            CardContentGridView(foodProductId: foodProduct.id, foodProductName: foodProduct.name, foodProductCountry: foodProduct.country, foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice, onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart, isInCart: isInCart, getProductQuantityInCart: getProductQuantityInCart)
        }
    }
}

#Preview {
    FoodCardGridView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), rating: 3.0, reviewsCount: 12, price: 199.90,           oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)), onAddToCart: { }, onRemoveFromCart: { }, isFavorite: true, toggleFavorite: { }, isInShopList: false, toggleShopList: { }, isInCart: {return true}, getProductQuantityInCart: {return 1})
}
