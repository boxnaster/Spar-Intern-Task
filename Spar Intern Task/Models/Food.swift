//
//  Food.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import Foundation
import SwiftUI

struct Food: Identifiable {
    var id: Int
    var name: String
    var image: Image
    var isFavorite: Bool
    var isInTheShopList: Bool
    var isNew: Bool
    var isHitThePrice: Bool
    var isPriceWithCard: Bool
    var raiting: Float
    var reviewsCount: Int
    var soldByWeight: Bool
    var price: Float
    var oldPrice: Float?
    var country: String
    var discountInPercent: Int


    static func getExamples() -> [Food] {
        return [Food(id: 1, name: "Огурцы тепличные садово-огородные 500гр", image: Image("cucumbers"), isFavorite: true, isInTheShopList: false, isNew: true, isHitThePrice: false, isPriceWithCard: false, raiting: 3.0, reviewsCount: 12, soldByWeight: false, price: 199.90, oldPrice: 210.10, country: "Россия🇷🇺", discountInPercent: 50),
                Food(id: 2, name: "Липа сушеная", image: Image("linden"), isFavorite: false, isInTheShopList: false, isNew: false, isHitThePrice: true, isPriceWithCard: false, raiting: 4.8, reviewsCount: 23, soldByWeight: true, price: 65.50, oldPrice: 70.20, country: "Россия🇷🇺", discountInPercent: 25),
                Food(id: 3, name: "Энергетический напиток Adrenaline Rush 0.5л", image: Image("adrenaline"), isFavorite: true, isInTheShopList: false, isNew: false, isHitThePrice: false, isPriceWithCard: true, raiting: 1.3, reviewsCount: 390, soldByWeight: false, price: 120.90, country: "Англия🇬🇧", discountInPercent: 10),
                Food(id: 4, name: "Сладкий миндаль", image: Image("almond"), isFavorite: false, isInTheShopList: false, isNew: false, isHitThePrice: false, isPriceWithCard: false, raiting: 5.0, reviewsCount: 10, soldByWeight: true, price: 340.50, country: "Испания🇱🇰", discountInPercent: 30)]
    }
}
