//
//  CardImageGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct CardImageGridView: View {

    let foodProductImage: Image
    let foodProductRating: Float
    let foodProductBadge: Badge?
    let isInTheShopList: Bool
    let isFavorite: Bool
    let foodProductDiscount: Int?

    var body: some View {
        ZStack {
            foodProductImage
            if let badge = foodProductBadge {
                BadgeView(badge: badge)
                    .frame(maxWidth: 168, maxHeight: .infinity, alignment: .topLeading)
            }
            HStack {
                Image("rating")
                Text(String(format: "%.2f", foodProductRating))
                    .font(.system(size: 12))
            }
            .frame(maxWidth: 168, maxHeight: .infinity, alignment: .bottomLeading)
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 32, height: 64)
                    .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9))
                ActionListView(isInTheShopList: isInTheShopList, isFavorite: isFavorite)
            }
            .frame(maxWidth: 168, maxHeight: .infinity, alignment: .topTrailing)
            if let discount = foodProductDiscount {
                Text("\(discount)%")
                    .foregroundStyle(.red)
                    .bold()
                    .frame(maxWidth: 168, maxHeight: .infinity, alignment: .bottomTrailing)
            }
        }
        .frame(maxWidth: 168, maxHeight: 278)
    }
}

#Preview {
    CardImageGridView(foodProductImage: FoodProduct.getExamples()[0].image, foodProductRating: FoodProduct.getExamples()[0].rating, foodProductBadge: FoodProduct.getExamples()[0].badge, isInTheShopList: FoodProduct.getExamples()[0].isInTheShopList, isFavorite: FoodProduct.getExamples()[0].isFavorite, foodProductDiscount: FoodProduct.getExamples()[0].discount)
}
