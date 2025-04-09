//
//  ExchangeInfoView.swift
//  LOTRConverter
//
//  Created by Pedro Henrique on 17/02/25.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)

                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()

                ExchangeRateView(
                    leftImage: .goldpiece,
                    rightImage: .goldpenny,
                    label: "1 Gold Piece = 4 Gold Pennies"
                )

                ExchangeRateView(
                    leftImage: .goldpenny,
                    rightImage: .silverpiece,
                    label: "1 Gold Penny = 4 Silver Pieces"
                )

                ExchangeRateView(
                    leftImage: .silverpiece,
                    rightImage: .silverpenny,
                    label: "1 Silver Piece = 4 Silver Pennies"
                )

                ExchangeRateView(
                    leftImage: .silverpenny,
                    rightImage: .copperpenny,
                    label: "1 Silver Penny = 100 Copper Pennies"
                )

                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfoView()
}
