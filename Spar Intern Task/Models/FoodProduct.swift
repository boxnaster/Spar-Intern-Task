//
//  Food.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import Foundation
import SwiftUI

struct FoodProduct: Identifiable {
    var id: Int
    var name: String
    var image: Image
    var isFavorite: Bool
    var isInTheShopList: Bool
    var raiting: Float
    var reviewsCount: Int
    var isSoldByWeight: Bool
    var price: Float
    var oldPrice: Float?
    var country: String?
    var discountInPercent: Int?
    var badge: Badge?
    var quantityType: QuantityType

    static func getExamples() -> [FoodProduct] {
        return [FoodProduct(id: 1, name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), isFavorite: true, isInTheShopList: false, raiting: 3.0, reviewsCount: 12, isSoldByWeight: false, price: 199.90, oldPrice: 210.10, discountInPercent: 50, badge: Badge(text: "Новинки", color: Color(red: 122/255, green: 121/255, blue: 186/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)),
                FoodProduct(id: 2, name: "Липа сушеная", image: Image("linden"), isFavorite: false, isInTheShopList: false, raiting: 4.8, reviewsCount: 23, isSoldByWeight: true, price: 65.50, oldPrice: 70.20, country: "Россия🇷🇺", discountInPercent: 25, badge: Badge(text: "Удар по ценам", color: Color(red:252/255, green: 106/255, blue: 111/255, opacity: 0.9)), quantityType: QuantityType(title: "Кг", step: 0.1)),
                FoodProduct(id: 3, name: "Энергетический напиток Adrenaline Rush 0.5л", image: Image("adrenaline"), isFavorite: true, isInTheShopList: false, raiting: 1.3, reviewsCount: 390, isSoldByWeight: false, price: 120.90, country: "Англия🇬🇧", badge: Badge(text: "Цена по карте", color: Color(red: 91/255, green: 205/255, blue: 123/255, opacity: 0.9)), quantityType: QuantityType(title: "Шт", step: 1)),
                FoodProduct(id: 4, name: "Сладкий миндаль", image: Image("almond"), isFavorite: false, isInTheShopList: false, raiting: 5.0, reviewsCount: 10, isSoldByWeight: true, price: 340.50, country: "Испания🇱🇰", discountInPercent: 30, quantityType: QuantityType(title: "Кг", step: 0.1))]
    }
}
