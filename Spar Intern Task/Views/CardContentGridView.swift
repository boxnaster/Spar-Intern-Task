//
//  CardContentGridView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct CardContentGridView: View {

    let foodProductName: String
    let foodProductCountry: String?
    let foodProductPrice: Float
    let foodProductOldPrice: Float?
    let foodProductIsSoldByWeight: Bool

    var body: some View {
        VStack(alignment: .leading) {
            DescriptionView(foodProductName: foodProductName, foodProductCountry: foodProductCountry)
            Spacer()
            if foodProductIsSoldByWeight {
                QuantityTypePickerView()
                Spacer()
                QuantityPickerView()
            } else {
                HStack(alignment: .bottom) {
                    PriceView(foodProductPrice: foodProductPrice, foodProductOldPrice: foodProductOldPrice)
                    Spacer()
                    AddToCartButtonView()
                }
            }
        }
    }
}


#Preview {
    CardContentGridView(foodProductName: FoodProduct.getExamples()[0].name, foodProductCountry: FoodProduct.getExamples()[0].country, foodProductPrice: FoodProduct.getExamples()[0].price, foodProductOldPrice: FoodProduct.getExamples()[0].oldPrice, foodProductIsSoldByWeight: FoodProduct.getExamples()[0].isSoldByWeight)
}
