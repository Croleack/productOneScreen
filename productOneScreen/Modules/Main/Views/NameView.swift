//
//  NameView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct NameView: View {
    var body: some View {
	   Text(Constants.text)
		  .foregroundColor(.black)
		  .font(.title)
		  .fontWeight(.semibold)
		  .lineLimit(Constants.lineQuantity)
		  .padding(.top, Constants.padTop)
		  .padding(.horizontal, Constants.padHorizont)
    }
}
// MARK: - Constants

fileprivate extension NameView {
    enum Constants {
	   static let text = "Добавка \"Липа\"\nк чаю, 200 г"
	   static let padHorizont = 16.0
	   static let padTop = 16.0
	   static let lineQuantity = 2
    }
}
