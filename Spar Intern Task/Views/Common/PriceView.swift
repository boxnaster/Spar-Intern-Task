//
//  Price.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct PriceView: View {
    
    let foodProductPrice: Decimal
    let foodProductOldPrice: Decimal?

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(String(format: "%.2f", NSDecimalNumber(decimal: foodProductPrice).doubleValue))
                    .font(.system(size: 20))
                    .bold()
                Image("per_amount")
            }
            if let oldPrice = foodProductOldPrice {
                Text(String(format: "%.2f", NSDecimalNumber(decimal: oldPrice).doubleValue))
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
