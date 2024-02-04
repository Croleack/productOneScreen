//
//  ButtonPriceView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 03.02.2024.
//
import SwiftUI

struct ButtonPriceView: View {
    var body: some View {
	   HStack(alignment: .center) {
		  Button(action: {}) {
			 Text(Constants.text)
				.foregroundColor(.white)
				.font(.caption)
				.padding(.horizontal, Constants.padHorizontText)
				.padding(.vertical, Constants.padVerticalText)
				.background(Color.green)
				.cornerRadius(Constants.cornerRadius)
		  }
	   }
	   .frame(minWidth: .zero,
			maxWidth: .infinity,
			alignment: .leading
	   )
	   .padding(.leading, Constants.padLeadingHstack)
    }
}
// MARK: - Constants

fileprivate extension ButtonPriceView {
    enum Constants {
	   static let text = "Цена по карте"
	   static let padVerticalText = 5.0
	   static let padHorizontText = 10.0
	   static let padLeadingHstack = 16.0
	   static let cornerRadius = 18.0
    }
}
