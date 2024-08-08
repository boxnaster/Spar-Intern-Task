//
//  FoodRow.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct FoodCardListView: View {

    let foodProduct: FoodProduct

    var body: some View {
        HStack {
            CardImageView(foodProductImage: foodProduct.image, foodProductDiscount: foodProduct.discount,  foodProductBadge: foodProduct.badge)
            CardContentView(foodProduct: foodProduct)
        }
    }
}

#Preview {
    FoodCardListView(foodProduct: FoodProduct.getExamples()[2])
}
