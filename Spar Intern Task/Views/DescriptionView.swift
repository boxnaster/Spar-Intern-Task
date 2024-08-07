//
//  Description.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct DescriptionView: View {

    let food: Food

    var body: some View {
        VStack(alignment: .leading) {
            Text(food.name)
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(food.country)
                .font(.system(size: 12))
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DescriptionView(food: Food.getExamples()[0])
}
