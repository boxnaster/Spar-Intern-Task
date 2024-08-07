//
//  CardContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardContentView: View {

    let foodProduct: FoodProduct

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    RatingView(foodProductRating: foodProduct.raiting, foodProductReviewsCount: foodProduct.reviewsCount)
                    DescriptionView(foodProductName: foodProduct.name, foodProductCountry: foodProduct.country)
                }
                ActionListView(isInTheShopList: foodProduct.isInTheShopList, isFavorite: foodProduct.isFavorite)
            }
            Spacer()
            HStack() {
                PriceView(foodProductPrice: foodProduct.price, foodProductOldPrice: foodProduct.oldPrice)
                Spacer()
                AddToCartButtonView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 144)
    }
}

#Preview {
    CardContentView(foodProduct: FoodProduct.getExamples()[0])
}
