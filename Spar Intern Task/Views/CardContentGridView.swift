//
//  CardContentGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct CardContentGridView: View {

    let foodProductId: UUID
    let foodProductName: String
    let foodProductCountry: String?
    let foodProductPrice: Float
    let foodProductOldPrice: Float?
    let foodProductIsSoldByWeight: Bool
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            DescriptionView(foodProductName: foodProductName, foodProductCountry: foodProductCountry)
            Spacer()
            if foodProductIsSoldByWeight {
                QuantityTypePickerView()
                Spacer()
                QuantityPickerView(onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart)
            } else {
                HStack(alignment: .bottom) {
                    PriceView(foodProductPrice: foodProductPrice, foodProductOldPrice: foodProductOldPrice)
                    Spacer()
                    AddToCartButtonView(foodProductId: foodProductId, onAddToCart: onAddToCart)
                }
            }
        }
    }
}


#Preview {
    CardContentGridView(foodProductId: UUID(), foodProductName: "Яблоки красные", foodProductCountry: "Азербайджан", foodProductPrice: 67.20, foodProductOldPrice: 74.10, foodProductIsSoldByWeight: true, onAddToCart: { }, onRemoveFromCart: { })
}
