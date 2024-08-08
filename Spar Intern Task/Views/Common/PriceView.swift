//
//  Price.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct PriceView: View {
    
    let foodProductPrice: Float
    let foodProductOldPrice: Float?

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(String(format: "%.2f", foodProductPrice))
                    .font(.system(size: 20))
                    .bold()
                Image("per_amount")
            }
            if let oldPrice = foodProductOldPrice {
                Text(String(format: "%.2f", oldPrice))
                    .strikethrough()
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    PriceView(foodProductPrice: 199.90, foodProductOldPrice: 230.90)
}
