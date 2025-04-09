//
//  IconGridView.swift
//  LOTRConverter
//
//  Created by Pedro Henrique on 20/02/25.
//

import SwiftUI

struct IconGridView: View {
    @Binding var selectedCurrency: Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                let currencyIconView = CurrencyIconView(
                    currencyImage: currency.image,
                    currencyName: currency.name
                )

                if selectedCurrency == currency {
                    currencyIconView
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 6)
                                .opacity(0.5)
                        }
                } else {
                    currencyIconView
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var currency: Currency = .silverPiece
    IconGridView(selectedCurrency: $currency)
}
