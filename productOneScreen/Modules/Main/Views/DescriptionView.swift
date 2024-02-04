//
//  DescriptionView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//
import SwiftUI

struct DescriptionView: View {
    var body: some View {
	   VStack(alignment: .leading, spacing: Constants.spacingHStack) {
		  Text(Constants.textName)
			 .foregroundColor(.black)
			 .font(.body)
			 .fontWeight(.semibold)
		  Text(Constants.textDescription)
			 .foregroundColor(.black)
			 .font(.body)
	   }
	   .padding(.top, Constants.padTop)
	   .padding(.horizontal, Constants.padHorizont)
    }
}
// MARK: - Constants

fileprivate extension DescriptionView {
    enum Constants {
	   static let textName = "Описание"
	   static let textDescription = "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов."
	   static let padHorizont = 16.0
	   static let padTop = 10.0
	   static let spacingHStack = 5.0
    }
}
