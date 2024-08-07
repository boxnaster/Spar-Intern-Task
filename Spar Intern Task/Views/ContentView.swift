//
//  ContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 06.08.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var foodProducts = FoodProduct.getExamples()
    @State private var listContentStyle = true

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(foodProducts) { product in
                        FoodCardView(foodProduct: product)
                            .listRowSeparator(.visible)
                            .listRowSeparatorTint(.gray)
                    }
                }
            }
            .listStyle(.plain)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        listContentStyle.toggle()
                        //TODO: change the list style
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 36, height: 36)
                                .foregroundColor(Color(red: 241/255, green: 241/255, blue: 241/255))
                            Image("list_view")
                        }
                    })
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
