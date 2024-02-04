//
//  LeaveFeedbackView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct LeaveFeedbackView: View {
    var body: some View {
	   Button(action: {}, label: {
		  Text(Constants.text)
			 .font(.body)
			 .frame(maxWidth: .infinity)
			 .foregroundColor(.green)
			 .padding(.vertical, Constants.padVerticalText)
			 .background(
				Capsule()
				    .stroke(.green, lineWidth: Constants.lineWidth)
			 )
	   })
	   .padding(.horizontal, Constants.padHorizont)
	   .padding(.bottom, Constants.padBottom)
    }
}

// MARK: - Constants

fileprivate extension LeaveFeedbackView {
    enum Constants {
	   static let text = "Оставить отзыв"
	   static let padHorizont = 16.0
	   static let padBottom = 10.0
	   static let padVerticalText = 10.0
	   static let lineWidth = 2.0
    }
}
