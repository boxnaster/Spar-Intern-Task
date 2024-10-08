//
//  Food.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import Foundation
import SwiftUI

struct FoodProduct: Identifiable, Hashable {
    var id: UUID
    var name: String
    var image: Image
    var rating: Float
    var reviewsCount: Int
    var price: Decimal
    var oldPrice: Decimal?
    var country: String?
    var discount: Int?
    var badge: Badge?

    static func == (lhs: FoodProduct, rhs: FoodProduct) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
}
