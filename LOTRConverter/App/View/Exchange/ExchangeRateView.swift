//
//  ExchangeRateView.swift
//  LOTRConverter
//
//  Created by Pedro Henrique on 17/02/25.
//

import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let label: String

    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(width: 32)

            Text(label)

            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(width: 32)
        }
    }
}

#Preview {
    ExchangeRateView(
        leftImage: .goldpiece,
        rightImage: .goldpenny,
        label: "1 Gold Piece = 4 Gold Pennies"
    )
}
