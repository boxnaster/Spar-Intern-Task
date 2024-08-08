//
//  FoodProductViewModel.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import Foundation
import SwiftUI

class FoodProductViewModel: ObservableObject {
    @Published var foodProducts: [FoodProduct] = []
    @Published var cart: [UUID: Int] = [:]
    @Published var favorites: Set<UUID> = []
    @Published var shopList: Set<UUID> = []

    init() {
        self.foodProducts = [
            FoodProduct(id: UUID(), name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), rating: 3.0, reviewsCount: 12, price: 199.90, oldPrice: 210.10, discount: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9))),
            FoodProduct(id: UUID(), name: "Липа сушеная", image: Image("linden"), rating: 4.8, reviewsCount: 23, price: 65.50, oldPrice: 70.20, country: "Россия🇷🇺", discount: 25, badge: Badge(text: "Удар по ценам", color: Color(red:252/255, green: 106/255, blue: 111/255, opacity: 0.9))),
            FoodProduct(id: UUID(), name: "Энергетический напиток Adrenaline Rush 0.5л", image: Image("adrenaline"), rating: 1.3, reviewsCount: 390, price: 120.90, country: "Англия🇬🇧", badge: Badge(text: "Цена по карте", color: Color(red: 91/255, green: 205/255, blue: 123/255, opacity: 0.9))),
            FoodProduct(id: UUID(), name: "Сладкий миндаль", image: Image("almond"), rating: 5.0, reviewsCount: 10, price: 340.50, country: "Испания🇱🇰", discount: 30)]
    }

    func addToCart(foodProductId: UUID) {
        if let currentQuantity = cart[foodProductId] {
            cart[foodProductId] = currentQuantity + 1
        } else {
            cart[foodProductId] = 1
        }
    }

    func removeFromCart(foodProductId: UUID) {
        if let currentQuantity = cart[foodProductId] {
            if currentQuantity > 0 {
                cart[foodProductId] = currentQuantity - 1
            }
        }
    }

    func totalItemsInCart() -> Int {
        return cart.values.reduce(0, +)
    }

    func toggleFavorite(productId: UUID) {
        if favorites.contains(productId) {
            favorites.remove(productId)
        } else {
            favorites.insert(productId)
        }
    }

    func isFavorite(productId: UUID) -> Bool {
        return favorites.contains(productId)
    }

    func toggleShopList(productId: UUID) {
        if shopList.contains(productId) {
            shopList.remove(productId)
        } else {
            shopList.insert(productId)
        }
    }

    func isInShopList(productId: UUID) -> Bool {
        return shopList.contains(productId)
    }

    func isInCart(productId: UUID) -> Bool {
        if let value = cart[productId], value > 0 {
            return true
        } else {
            return false
        }
    }

    func getProductQuantityInCart(productId: UUID) -> Int {
        if let productQuantity = cart[productId] {
            return productQuantity
        } else {
            return 0
        }
    }
}
