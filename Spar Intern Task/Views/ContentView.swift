//
//  ContentView.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 06.08.2024.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = FoodProductViewModel()
    @State private var isListView = true

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            Group {
                if isListView {
                    ScrollView {
                        ForEach(viewModel.foodProducts) { product in
                            FoodCardListView(
                                foodProduct: product,
                                onAddToCart: { addToCart(foodProductId: product.id) },
                                onRemoveFromCart: { removeFromCart(foodProductId: product.id)}
                            )
                            Divider()
                            .padding(.bottom, 10)
                        }
                        .padding()
                    }
                    .listStyle(.plain)
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(viewModel.foodProducts) { product in
                                FoodCardGridView(
                                    foodProduct: product,
                                    onAddToCart: { addToCart(foodProductId: product.id) },
                                    onRemoveFromCart: { removeFromCart(foodProductId: product.id)}
                                )
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
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "cart")
                            .foregroundColor(.green)
                            .bold()
                        Text("\(viewModel.totalItemsInCart())")
                            .foregroundStyle(.green)
                            .bold()
                    }
                }
            })
        }
    }

    private func addToCart(foodProductId: UUID) {
        viewModel.addToCart(foodProductId: foodProductId)
    }

    private func removeFromCart(foodProductId: UUID) {
        viewModel.removeFromCart(foodProductId: foodProductId)
    }
}




#Preview {
    ContentView()
}
