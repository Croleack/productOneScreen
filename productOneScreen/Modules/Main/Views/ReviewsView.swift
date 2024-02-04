//
//  ReviewsView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct ReviewsView: View {
    var body: some View {
	   HStack(alignment: .center, spacing: Constants.spacingHStack) {
		  Image(systemName: Constants.nameStar)
			 .resizable()
			 .scaledToFill()
			 .frame(width: Constants.frameStar,
				   height: Constants.frameStar
			 )
			 .foregroundColor(.yellow)
		  Text(Constants.nameRat)
			 .foregroundColor(.black)
		  Text(Constants.nameFeedback)
			 .foregroundColor(.gray)
		  Spacer()
		  Image(Constants.nameSale)
			 .resizable()
			 .scaledToFill()
			 .frame(width: Constants.frameSale,
				   height: Constants.frameSale
			 )
			 .foregroundColor(.yellow)
	   }
	   .font(.callout)
	   .padding(.horizontal, Constants.padHorizont)
    }
}

// MARK: - Constants

fileprivate extension ReviewsView {
    enum Constants {
	   static let nameStar = "star.fill"
	   static let nameRat = "4.1"
	   static let nameFeedback = "| 19 отзывов"
	   static let nameSale = "sale"
	   static let padHorizont = 16.0
	   static let spacingHStack = 5.0
	   static let frameStar = 15.0
	   static let frameSale = 25.0
    }
}
