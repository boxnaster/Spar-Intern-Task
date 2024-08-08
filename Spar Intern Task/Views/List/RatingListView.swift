//
//  Rating.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct RatingListView: View {
    
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
    RatingListView(foodProductRating: 4.5, foodProductReviewsCount: 24)
}
