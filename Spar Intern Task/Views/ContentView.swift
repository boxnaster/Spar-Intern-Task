//
//  ContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 06.08.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var foodProducts = FoodProduct.getExamples()
    @State private var isListView = true

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            Group {
                if isListView {
                    List {
                        ForEach(foodProducts) { product in
                            FoodCardListView(foodProduct: product)
                                .listRowSeparator(.visible)
                                .listRowSeparatorTint(.gray)
                        }

                    }
                    .listStyle(.plain)
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(foodProducts) { product in
                                FoodCardGridView(foodProduct: product)
                            }
                        }
                        .padding()
                    }
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isListView.toggle()
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 36, height: 36)
                                .foregroundColor(Color(red: 241/255, green: 241/255, blue: 241/255))
                            Image(isListView ? "list_view" : "grid_view")
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
