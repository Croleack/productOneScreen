//
//   BasicCharacteristicsView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct BasicCharacteristicsView: View {
    var body: some View {
	   VStack(alignment: .leading) {
		  Text(Constants.textName)
			 .foregroundColor(.black)
			 .font(.body)
			 .fontWeight(.semibold)
		  VStack(alignment: .leading, spacing: Constants.spacingVStack) {
			 createCharacteristics(text1: Constants.textOneCaracOne,
							   text2: Constants.textTwoCaracOne
			 )
			 createCharacteristics(text1: Constants.textOneCaracTwo,
							   text2: Constants.textTwoCaracTwo
			 )
			 createCharacteristics(text1: Constants.textOneCaracThree,
							   text2: Constants.textTwoCaracThree
			 )
			 createCharacteristics(text1: Constants.textOneCaracFour,
							   text2: Constants.textTwoCaracFour
			 )
			 createCharacteristics(text1: Constants.textOneCaracFive,
							   text2: Constants.textTwoCaracFive
			 )
		  }
		  .padding(.top, Constants.padTopVStack)
		  Button(action: {}) {
			 Text(Constants.allCarac)
				.foregroundColor(.green)
				.font(.body)
				.fontWeight(.semibold)
				.padding(.vertical, Constants.padTopTextAllCarac)
				.cornerRadius(Constants.cornerRadius)
		  }
	   }
	   .padding(.top, Constants.padTop)
	   .padding(.horizontal, Constants.padHorizont)
    }
    
    func createCharacteristics(text1: String, text2: String) -> some View {
	   HStack(alignment: .top) {
		  Text(text1)
			 .lineLimit(Constants.lineLimitOne)
			 .layoutPriority(Constants.layoutPriority)
		  Text(String(repeating: Constants.dot,
				    count: Constants.countDot)
		  )
		  .font(.caption)
		  .lineLimit(Constants.lineLimitTwo)
		  .layoutPriority(.zero)
		  Text(text2)
			 .multilineTextAlignment(.trailing)
			 .layoutPriority(Constants.layoutPriority)
	   }
	   .font(.system(size: Constants.font))
    }
}
// MARK: - Constants

fileprivate extension BasicCharacteristicsView {
    enum Constants {
	   static let textName = "Основные характеристики"
	   static let textOneCaracOne = "Производство"
	   static let textTwoCaracOne = "Россия,Краснoдарский\n край"
	   static let textOneCaracTwo = "Энергетическая ценность,\nккал/100 г"
	   static let textTwoCaracTwo = "25 ккал, 105\n кДж"
	   static let textOneCaracThree = "Жиры/100 г"
	   static let textTwoCaracThree = "0,1 г"
	   static let textOneCaracFour = "Белки/100 г"
	   static let textTwoCaracFour = "1,3 г"
	   static let textOneCaracFive = "Углеводы/100 г"
	   static let textTwoCaracFive = "3,3 г"
	   static let allCarac = "Все характеристики"
	   static let dot = "."
	   static let padHorizont = 16.0
	   static let padTop = 16.0
	   static let padTopVStack = 10.0
	   static let padTopTextAllCarac = 10.0
	   static let spacingVStack = 24.0
	   static let cornerRadius = 7.0
	   static let lineLimitOne = 2
	   static let lineLimitTwo = 1
	   static let layoutPriority = 1.0
	   static let font = 14.0
	   static let countDot = 80
    }
}
