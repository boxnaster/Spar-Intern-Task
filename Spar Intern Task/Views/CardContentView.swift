//
//  CardContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardContentView: View {

    let food: Food

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    RatingView(food: food)
                    DescriptionView(food: food)
                }
                ActionListView(food: food)
            }
            Spacer()
            HStack() {
                PriceView(food: food)
                Spacer()
                AddToCartButtonView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 144)
    }
}

#Preview {
    CardContentView(food: Food.getExamples()[0])
}
