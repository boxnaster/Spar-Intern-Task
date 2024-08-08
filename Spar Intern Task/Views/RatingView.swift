//
//  Rating.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct RatingView: View {
    
    let foodProductRating: Float
    let foodProductReviewsCount: Int

    var body: some View {
        HStack() {
            Image("rating")
            Text(String(format: "%.1f", foodProductRating))
                .font(.system(size: 12))
            Text("| \(foodProductReviewsCount) отзывов")
                .font(.system(size: 12))
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    RatingView(foodProductRating: FoodProduct.getExamples()[0].rating, foodProductReviewsCount: FoodProduct.getExamples()[0].reviewsCount)
}
