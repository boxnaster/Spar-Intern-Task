//
//  FoodRow.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct FoodCardView: View {
    let food: Food
    
    var body: some View {
        HStack {
            CardImageView(food: food)
            CardContentView(food: food)
        }
    }
}

#Preview {
    FoodCardView(food: Food.getExamples()[2])
}
