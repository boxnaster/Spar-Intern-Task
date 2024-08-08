//
//  CardContentViewModel.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 08.08.2024.
//

import Foundation

class CardContentViewModel: ObservableObject {
    @Published var isProductAddedToCart = false
    
    func toggleMode() {
        isProductAddedToCart = true
    }
}
