//
//  Description.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct DescriptionListView: View {

    let foodProductName: String
    let foodProductCountry: String?

    var body: some View {
        VStack(alignment: .leading) {
            Text(foodProductName)
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 2)
            if let country = foodProductCountry {
                Text(country)
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DescriptionListView(foodProductName: "Картофель свежий", foodProductCountry: "Россия")
}
