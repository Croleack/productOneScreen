//
//  PriceButtonView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct PriceButtonView: View {
    @StateObject private var viewModel = PriceButtonViewModel()
    
    var body: some View {
	   ZStack {
		  RoundedRectangle(cornerRadius: Constants.cornerRadius)
			 .fill(Color.green)
		  HStack {
			 Button(action: {
				viewModel.decrement()
			 }) {
				Image(systemName: Constants.minus)
				    .font(.body.weight(.semibold))
			 }
			 .padding(Constants.padButton)
			 .foregroundColor(.white)
			 .clipShape(Circle())
			 
			 Spacer()
			 
			 VStack(spacing: .zero) {
				Text("\(viewModel.count)")
				    .font(.body)
				    .fontWeight(.semibold)
				Text("\(viewModel.totalPrice, specifier: "%.2f") ₽")
				    .font(.footnote)
				    .opacity(Constants.opacity)
			 }
			 .foregroundColor(.white)
			 
			 Spacer()
			 
			 Button(action: {
				viewModel.increment()
			 }) {
				Image(systemName: Constants.plus)
				    .font(.body.weight(.semibold))
			 }
			 .padding(Constants.padButton)
			 .foregroundColor(.white)
			 .clipShape(Circle())
		  }
	   }
	   .frame(width: Constants.frameWidth,
			height: Constants.frameHeight
	   )
    }
}
// MARK: - Constants

fileprivate extension PriceButtonView {
    enum Constants {
	   static let minus = "minus"
	   static let plus = "plus"
	   static let cornerRadius = 20.0
	   static let padButton = 5.0
	   static let opacity = 0.8
	   static let frameWidth = 160.0
	   static let frameHeight = 40.0
    }
}

