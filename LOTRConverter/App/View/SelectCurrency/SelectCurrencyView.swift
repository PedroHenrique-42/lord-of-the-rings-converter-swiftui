//
//  SwiftUIView.swift
//  LOTRConverter
//
//  Created by Pedro Henrique on 20/02/25.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .fontWeight(.bold)

                IconGridView(selectedCurrency: $topCurrency)

                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)

                IconGridView(selectedCurrency: $bottomCurrency)

                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPiece

    SelectCurrencyView(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
