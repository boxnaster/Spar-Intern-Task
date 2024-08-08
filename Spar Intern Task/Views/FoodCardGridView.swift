//
//  FoodCardGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct FoodCardGridView: View {

    let foodProduct: FoodProduct

    var body: some View {
        VStack {
            CardImageGridView(foodProductImage: foodProduct.image, foodProductRating: foodProduct.rating, foodProductBadge: foodProduct.badge, isInTheShopList: foodProduct.isInTheShopList, isFavorite: foodProduct.isFavorite, foodProductDiscount: foodProduct.discount)
            Spacer()
            CardContentGridView(foodProductName: foodProduct.name, foodProductCountry: foodProduct.country, foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice, foodProductIsSoldByWeight: foodProduct.isSoldByWeight)
            // не слишком ли много всего передаем? мб проще передать весь foodProduct?
        }
    }
}

#Preview {
    FoodCardGridView(foodProduct: FoodProduct.getExamples()[0])
}
