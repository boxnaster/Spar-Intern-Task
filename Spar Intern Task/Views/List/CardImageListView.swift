//
//  CardImageView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct CardImageListView: View {

    let foodProductImage: Image
    let foodProductDiscount: Int?
    let foodProductBadge: Badge?

    var body: some View {
        ZStack {
            foodProductImage

            if let badge = foodProductBadge {
                BadgeView(badge: badge)
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .topLeading)
            }

            if let discount = foodProductDiscount {
                Text("\(discount)%")
                    .foregroundStyle(.red)
                    .bold()
                    .frame(maxWidth: 144, maxHeight: .infinity, alignment: .bottomTrailing)
            }
        }
        .frame(maxHeight: 144)
    }
}

#Preview {
    CardImageListView(foodProductImage: Image("cucumbers"), foodProductDiscount: 20, foodProductBadge: Badge(text: "Новинки", color: .purple))
}
