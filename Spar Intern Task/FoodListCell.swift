//
//  FoodRow.swift
//  Spar Intern Task
//
//  Created by Анастасия Тимофеева on 07.08.2024.
//

import SwiftUI

struct FoodListCell: View {
    let food: Food

    var body: some View {
        HStack {
            ZStack {
                food.image
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

                if food.isHitThePrice {
                    Image("hit_the_price")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                if food.isNew {
                    Image("new")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                if food.isPriceWithCard {
                    Image("price_with_card")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                if food.discontInPercent > 0 {
                    Text("\(food.discontInPercent)%")
                        .foregroundStyle(.red)
                        .bold()
                }
            }
            VStack {
                HStack {
                    VStack {
                        HStack {
                            Image("rating")
                            Text(String(format: "%.1f", food.raiting))
                                .font(.system(size: 12))
                                .lineLimit(1)
                            Text("| \(food.reviewsCount) отзывов")
                                .font(.system(size: 12))
                                .foregroundStyle(.gray)
                                .lineLimit(1)
                        }
                        Text(food.name)
                            .font(.system(size: 12))
                        Text(food.country)
                            .font(.system(size: 12))
                            .foregroundStyle(.gray)

                    }
                    VStack {
                        Button(action: {
                            //add the item to the shop list
                        }, label: {
                            Image(food.isInTheShopList ? "shop_list.fill" : "shop_list")
                        })
                        Button(action: {
                            //add the item to favorites
                        }, label: {
                            Image(food.isFavorite ? "favorite.fill" : "favorite")
                        })
                    }
                }
                HStack {
                    VStack {
                        HStack {
                            Text(String(format: "%.2f", food.price))
                                .font(.system(size: 20))
                                .bold()
                            Image("per_amount")
                        }
                        if let oldPrice = food.oldPrice {
                            Text(String(format: "%.2f", oldPrice))
                                .strikethrough()
                                .font(.system(size: 12))
                                .foregroundStyle(.gray)
                        }
                    }

                    Button(action: {
                        //add the item to the cart
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 36, height: 36)
                                .foregroundColor(.green)
                            Image("cart")
                        }
                    })
                }
            }


        }
        .padding(10)
        .frame(height: 176)
    }
}

#Preview {
    FoodListCell(food: Food.getExamples()[0])
}
