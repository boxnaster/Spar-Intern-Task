//
//  QuantityTypePickerView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct QuantityTypePickerView: View {

    @State private var selectedQantityType = "Шт"
    let quantityTypes = ["Шт", "Кг"]

    var body: some View {
        Picker("Appearance", selection: $selectedQantityType) {
            ForEach(quantityTypes, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(.segmented)
    }
}

#Preview {
    QuantityTypePickerView()
}
