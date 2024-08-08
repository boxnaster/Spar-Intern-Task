//
//  ActionList.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct ActionListView: View {

    let isFavorite: Bool
    let toggleFavorite: () -> Void
    let isInShopList: Bool
    let toggleShopList: () -> Void

    var body: some View {
        VStack {
            Button(action: {
                toggleShopList()
            }, label: {
                Image(isInShopList ? "shop_list.fill" : "shop_list")
                //я использую FSSymbol, а не символ из макета, потому что в нем нет версии с заливкой
            })
            .frame(width: 32, height: 32)
            Button(action: {
                toggleFavorite()
            }, label: {
                Image(isFavorite ? "favorite.fill" : "favorite")

            })
            .frame(width: 32, height: 32)
        }
    }
}

#Preview {
    ActionListView(isFavorite: true, toggleFavorite: { }, isInShopList: true, toggleShopList: { })
}
