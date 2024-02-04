//
//  HeadingView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct HeadingView: View {
    var body: some View {
	   HStack(){
		  Text(Constants.text)
			 .foregroundColor(.black)
			 .font(.title2)
			 .fontWeight(.bold)
		  Spacer()
		  Button(action: {}) {
			 Text(Constants.textButton)
				.foregroundColor(.green)
				.font(.body)
				.fontWeight(.semibold)
		  }
	   }
	   .padding(.top, Constants.padTop)
	   .padding(.horizontal, Constants.padHorizont)
    }
}

// MARK: - Constants

fileprivate extension HeadingView {
    enum Constants {
	   static let text = "Отзывы"
	   static let textButton = "Все 152"
	   static let padHorizont = 16.0
	   static let padTop = 16.0
    }
}
