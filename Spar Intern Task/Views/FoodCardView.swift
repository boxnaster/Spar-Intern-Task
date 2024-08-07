//
//  FoodRow.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct FoodCardView: View {
    
    let foodProduct: FoodProduct
    
    var body: some View {
        HStack {
            CardImageView(foodProductImage: foodProduct.image, foodProductDiscount: foodProduct.discountInPercent,  foodProductBadge: foodProduct.badge)
            CardContentView(foodProduct: foodProduct)
        }
    }
}

#Preview {
    FoodCardView(foodProduct: FoodProduct.getExamples()[2])
}
