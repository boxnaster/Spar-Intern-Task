//
//  CardContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardContentView: View {

    let foodProduct: FoodProduct
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    RatingView(foodProductRating: foodProduct.rating, foodProductReviewsCount: foodProduct.reviewsCount)
                    DescriptionView(foodProductName: foodProduct.name, foodProductCountry: foodProduct.country)
                }
                ActionListView(isInTheShopList: foodProduct.isInTheShopList, isFavorite: foodProduct.isFavorite)
            }
            Spacer()
            if foodProduct.isSoldByWeight {
                QuantityTypePickerView()
                QuantityPickerView(onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart)
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
    CardContentView(foodProduct: FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), isFavorite: true, isInTheShopList: false, rating: 3.0, reviewsCount: 12, isSoldByWeight: false, price: 199.90,         oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)), onAddToCart: { }, onRemoveFromCart: { })
}
