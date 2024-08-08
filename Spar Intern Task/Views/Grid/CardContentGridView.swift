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
    let foodProductPrice: Decimal
    let foodProductOldPrice: Decimal?
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void
    let isInCart: () -> Bool
    let getProductQuantityInCart: () -> Int

    var body: some View {
        VStack(alignment: .leading) {
            DescriptionListView(foodProductName: foodProductName, foodProductCountry: foodProductCountry)
            Spacer()
            if isInCart() {
                QuantityTypePickerView()
                Spacer()
                QuantityPickerView(price: foodProductPrice, onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart, getProductQuantityInCart: getProductQuantityInCart)
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
    CardContentGridView(foodProductId: UUID(), foodProductName: "Яблоки красные", foodProductCountry: "Азербайджан", foodProductPrice: 67.20, foodProductOldPrice: 74.10, onAddToCart: { }, onRemoveFromCart: { }, isInCart: {return true}, getProductQuantityInCart: {return 3})
}
