//
//  FoodRow.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct FoodCardListView: View {

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
        HStack {
            CardImageListView(foodProductImage: foodProduct.image, foodProductDiscount: foodProduct.discount,  foodProductBadge: foodProduct.badge)
            CardContentListView(foodProduct: foodProduct, onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart, isFavorite: isFavorite, toggleFavorite: toggleFavorite, isInShopList: isInShopList, toggleShopList: toggleShopList, isInCart: isInCart, getProductQuantityInCart: getProductQuantityInCart)
        }
    }
}

#Preview {
    FoodCardListView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), rating: 3.0, reviewsCount: 12, price: 199.90, oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255,            blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)), onAddToCart: { }, onRemoveFromCart: { }, isFavorite: false, toggleFavorite: { }, isInShopList: true, toggleShopList: { }, isInCart: {return true}, getProductQuantityInCart: {return 1})
}
