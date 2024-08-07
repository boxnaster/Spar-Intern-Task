//
//  Price.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct PriceView: View {
    
    let food: Food
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(String(format: "%.2f", food.price))
                    .font(.system(size: 20))
                    .bold()
                Image("per_amount")
            }
            if let oldPrice = food.oldPrice {
                Text(String(format: "%.2f", oldPrice))
                    .strikethrough()
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    PriceView(food: Food.getExamples()[0])
}
