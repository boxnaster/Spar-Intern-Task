//
//  QuantityPickerView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import SwiftUI

struct QuantityPickerView: View {
    
    let price: Decimal
    let onAddToCart: () -> Void
    let onRemoveFromCart: () -> Void
    let getProductQuantityInCart: () -> Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 36)
                .foregroundColor(Color(red: 21/255, green: 183/255, blue: 66/255))
            HStack {
                Button(action: {
                    onRemoveFromCart()
                }, label: {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .bold()
                })
                .padding(.horizontal, 10)
                Spacer()
                VStack(alignment: .center) {
                    Text(String(getProductQuantityInCart()))
                        .font(.system(size: 16))
                        .bold()
                        .foregroundStyle(.white)
                    let result = price * Decimal(getProductQuantityInCart())
                    let resultString = String(format: "%.2f", NSDecimalNumber(decimal: result).doubleValue)
                    Text("\(resultString)₽")
                        .font(.system(size: 12))
                        .foregroundStyle(.white)
                }
                Spacer()
                Button(action: {
                    onAddToCart()
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .bold()
                })
                .padding(.horizontal, 10)
            }
        }
    }
}

#Preview {
    QuantityPickerView(price: 199.90, onAddToCart: { }, onRemoveFromCart: { }, getProductQuantityInCart: { return 2 })
}
