//
//  PriceView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct PriceView: View {
    var body: some View {
	   HStack {
		  VStack(alignment: .leading, spacing: .zero) {
			 HStack(spacing: .zero) {
				Text(Constants.textNewPrice)
				    .foregroundColor(.black)
				    .font(.title)
				    .fontWeight(.bold)
				HStack {
				    Text(Constants.textRoub)
					   .offset(x: Constants.offsetX,
							 y: Constants.offsetY
					   )
					   .font(.system(size: Constants.fontText,
								  weight: .bold)
					   )
					   .alignmentGuide(VerticalAlignment.center) { preferences in
						  preferences[.bottom]
					   }
				    Text(Constants.trait)
					   .font(.system(size: Constants.fontTrait,
								  weight: .bold)
					   )
				    Text(Constants.kg)
					   .offset(x: -Constants.offsetX,
							 y: -Constants.offsetY
					   )
					   .font(.system(size: Constants.fontText,
								  weight: .bold)
					   )
					   .alignmentGuide(VerticalAlignment.center) { preferences in
						  preferences[.top]
					   }
				}
			 }
			 Text(Constants.textOldPrice)
				.strikethrough()
				.foregroundColor(.gray)
				.font(.body)
		  }
		  Spacer()
		  PriceButtonView()
	   }
	   .padding(.bottom, Constants.padBottom)
	   .padding(.top, Constants.padTop)
	   .padding(.horizontal, Constants.padHorizont)
    }
}
// MARK: - Constants

fileprivate extension PriceView {
    enum Constants {
	   static let textNewPrice = "55.9"
	   static let textRoub = "₽"
	   static let trait = " / "
	   static let kg = "кг"
	   static let textOldPrice = " 100.0"
	   
	   static let padHorizont = 16.0
	   static let padTop = 8.0
	   static let padBottom = 8.0
	   static let offsetX = 10.0
	   static let offsetY = 2.0
	   static let fontText = 14.0
	   static let fontTrait = 20.0
    }
}
