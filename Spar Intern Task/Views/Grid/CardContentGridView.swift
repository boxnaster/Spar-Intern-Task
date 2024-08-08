//
//  CardContentGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct CardContentGridView: View {

    @StateObject private var cardContentViewModel = CardContentViewModel()
    let foodProductId: UUID
    let foodProductName: String
    let foodProductCountry: String?
    let foodProductPrice: Float
    let foodProductOldPrice: Float?
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            DescriptionListView(foodProductName: foodProductName, foodProductCountry: foodProductCountry)
            Spacer()
            if cardContentViewModel.isProductAddedToCart {
                QuantityTypePickerView()
                Spacer()
                QuantityPickerView(onAddToCart: onAddToCart, onRemoveFromCart: onRemoveFromCart)
            } else {
                HStack(alignment: .bottom) {
                    PriceView(foodProductPrice: foodProductPrice, foodProductOldPrice: foodProductOldPrice)
                    Spacer()
                    AddToCartButtonView(foodProductId: foodProductId, onAddToCart: addToCart)
                }
            }
        }
    }
    func addToCart() {
        onAddToCart()
        cardContentViewModel.toggleMode()
    }
}


#Preview {
    CardContentGridView(foodProductId: UUID(), foodProductName: "Яблоки красные", foodProductCountry: "Азербайджан", foodProductPrice: 67.20, foodProductOldPrice: 74.10, onAddToCart: { }, onRemoveFromCart: { })
}
