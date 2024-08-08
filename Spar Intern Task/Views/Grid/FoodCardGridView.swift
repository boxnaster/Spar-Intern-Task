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

    var body: some View {
        VStack {
            CardImageGridView(foodProductImage: foodProduct.image, foodProductRating: foodProduct.rating, foodProductBadge: foodProduct.badge, isInTheShopList: foodProduct.isInTheShopList, isFavorite: foodProduct.isFavorite, foodProductDiscount: foodProduct.discount)
            Spacer()
            CardContentGridView(foodProductId: foodProduct.id, foodProductName: foodProduct.name, foodProductCountry: foodProduct.country, foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice, onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart)
        }
    }
}

#Preview {
    FoodCardGridView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), isFavorite: true, isInTheShopList: false, rating: 3.0, reviewsCount: 12, price: 199.90,           oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255,                        blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)), onAddToCart: { }, onRemoveFromCart: { })
}
