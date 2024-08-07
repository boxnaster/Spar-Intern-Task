//
//  Rating.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct RatingView: View {

    let food: Food

    var body: some View {
        HStack() {
            Image("rating")
            Text(String(format: "%.1f", food.raiting))
                .font(.system(size: 12))
            Text("| \(food.reviewsCount) отзывов")
                .font(.system(size: 12))
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    RatingView(food: Food.getExamples()[0])
}
