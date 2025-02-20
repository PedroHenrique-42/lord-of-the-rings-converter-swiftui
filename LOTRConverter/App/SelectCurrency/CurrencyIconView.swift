//
//  SwiftUIView.swift
//  LOTRConverter
//
//  Created by Pedro Henrique on 20/02/25.
//

import SwiftUI

struct CurrencyIconView: View {
    let currencyImage: ImageResource
    let currencyName: String

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()

            Text(currencyName)
                .padding(2)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(4)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    CurrencyIconView(currencyImage: .silverpiece, currencyName: "Silver Piece")
}
