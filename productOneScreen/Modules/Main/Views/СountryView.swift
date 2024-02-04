//
//  СountryView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct СountryView: View {
    var body: some View {
	   HStack(spacing: Constants.spacingHStack){
		  Image(Constants.nameImage)
			 .resizable()
			 .scaledToFill()
			 .frame(width: Constants.frameImage,
				   height: Constants.frameImage
			 )
			 .cornerRadius(Constants.cornerRadius)
		  Text(Constants.text)
			 .foregroundColor(.black)
			 .font(.footnote)
			 .opacity(Constants.opacity)
	   }
	   .padding(.top, Constants.padTop)
	   .padding(.horizontal, Constants.padHorizont)
    }
}
// MARK: - Constants

fileprivate extension СountryView {
    enum Constants {
	   static let nameImage = "spain"
	   static let text = "Испания, Риоха"
	   static let padHorizont = 16.0
	   static let padTop = 10.0
	   static let spacingHStack = 8.0
	   static let frameImage = 20.0
	   static let cornerRadius = 13.0
	   static let opacity = 0.6
    }
}
