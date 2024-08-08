//
//  ActionList.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct ActionListView: View {

    let isInTheShopList: Bool
    let isFavorite: Bool

    var body: some View {
        VStack {
            Button(action: {
                //TODO: add the item to the shop list
            }, label: {
                Image(isInTheShopList ? "shop_list.fill" : "shop_list")

            })
            .frame(width: 32, height: 32)
            Button(action: {
                //TODO: add the item to favorites
            }, label: {
                Image(isFavorite ? "favorite.fill" : "favorite")

            })
            .frame(width: 32, height: 32)
        }
    }
}

#Preview {
    ActionListView(isInTheShopList: true, isFavorite: true)
}
