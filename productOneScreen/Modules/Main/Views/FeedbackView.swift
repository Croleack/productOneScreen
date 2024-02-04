//
//  FeedbackView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct FeedbackView: View {
    let names = ["Александр В", "Леонардо С", "Иван С", "Тарантино"]
    let dates = ["7 мая 2021", "15 апреля 2021", "3 июня 2021", "22 марта 2021"]
    let ratings = [4, 5, 4, 5]
    let reviews = [
	   "Хорошая добавка, мне очень понравилась! Хочу чтобы все добавки были такими!",
	   "Норм качество и быстрая доставка.",
	   "Купил липу и заболела теща, неожиданно",
	   "Эх 😬😬😬 заказал липу и прислали липу!"
    ]
    
    var body: some View {
	   
	   ScrollView(.horizontal, showsIndicators: false) {
		  HStack(spacing: Constants.spacingHStack) {
			 ForEach(0..<4, id: \.self) { _ in
				ZStack {
				    RoundedRectangle(cornerRadius: Constants.cornerRadius)
					   .fill(.white)
					   .shadow(color: .gray,
							 radius: Constants.radiusShadow
					   )
					   .opacity(Constants.opacityRectangle)
				    VStack(alignment: .leading) {
					   Text(names.randomElement() ?? .defString)
						  .foregroundColor(.black)
						  .font(.body)
						  .fontWeight(.bold)
					   Text(dates.randomElement() ?? .defString)
						  .foregroundColor(.gray)
						  .font(.footnote)
					   HStack(spacing: Constants.spacingHStack) {
						  ForEach(0..<5) { star in
							 Image(systemName: Constants.image)
								.resizable()
								.scaledToFill()
								.frame(width: Constants.frameImage,
									  height: Constants.frameImage
								)
								.foregroundColor(star < ratings.randomElement() ?? .zero ? .yellow : .gray)
						  }
					   }
					   Text(reviews.randomElement() ?? .defString)
						  .lineLimit(Constants.lineLimit)
						  .multilineTextAlignment(.leading)
						  .font(.footnote)
						  .opacity(Constants.opacityText)
				    }
				}
				.frame(width: UIScreen.main.bounds.width * Constants.coefficientWidth,
					  height: UIScreen.main.bounds.height * Constants.coefficientHeight
				)
				.padding(.vertical, Constants.padTop)
				.padding(.leading, Constants.padLeading)
			 }
		  }
	   }
    }
}

// MARK: - Constants

fileprivate extension FeedbackView {
    enum Constants {
	   static let image = "star.fill"
	   static let padLeading = 16.0
	   static let padTop = 16.0
	   static let spacingHStack = 5.0
	   static let cornerRadius = 12.0
	   static let radiusShadow = 3.0
	   static let opacityRectangle = 0.5
	   static let opacityText = 0.9
	   static let frameImage = 15.0
	   static let lineLimit = 3
	   static let coefficientWidth = 0.5
	   static let coefficientHeight = 0.2
    }
}


