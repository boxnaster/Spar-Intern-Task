//
//  BadgeView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct BadgeView: View {

    let badge: Badge

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 84, height: 16)
                .foregroundColor(badge.color)
            Text(badge.text)
                .font(.system(size: 10))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    BadgeView(badge: Badge(text: "Новинки", color: .purple))
}
