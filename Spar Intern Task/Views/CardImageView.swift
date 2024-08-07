//
//  CardImageView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardImageView: View {

    let food: Food

    var body: some View {
        ZStack {
            food.image

            if food.isHitThePrice {
                Image("hit_the_price")
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .topLeading)
            }
            if food.isNew {
                Image("new")
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .topLeading)
            }
            if food.isPriceWithCard {
                Image("price_with_card")
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .topLeading)
            }
            if food.discountInPercent > 0 {
                Text("\(food.discountInPercent)%")
                    .foregroundStyle(.red)
                    .bold()
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .bottomTrailing)
            }
        }
        .frame(maxHeight: 144)
    }
}

#Preview {
    CardImageView(food: Food.getExamples()[0])
}
