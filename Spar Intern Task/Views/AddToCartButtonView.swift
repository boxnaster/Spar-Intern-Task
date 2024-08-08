//
//  AddToCartButtonView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI


struct AddToCartButtonView: View {

    @StateObject private var viewModel = FoodProductViewModel()
    let foodProductId: UUID
    let onAddToCart: () -> Void

    var body: some View {
        Button(action: {
            onAddToCart()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 48, height: 36)
                    .foregroundColor(Color(red: 21/255, green: 183/255, blue: 66/255))
                Image("cart")
            }
        })
    }
}

#Preview {
    AddToCartButtonView(foodProductId: UUID(), onAddToCart: {})
}
