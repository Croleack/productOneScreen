//
//  MainNavigationBarView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 03.02.2024.
//

import SwiftUI

struct MainNavigationBarView: View {
    var body: some View {
	   HStack {
		  buttonWithImage(systemImage: Constants.arrow)
			 .padding(.leading, Constants.padLeadingArrow)
		  Spacer()
		  HStack(spacing: Constants.spacingHStack) {
			 buttonWithImage(systemImage: Constants.list)
			 buttonWithImage(systemImage: Constants.square)
			 buttonWithImage(systemImage: Constants.heart)
		  }
		  .padding(.horizontal, Constants.padHorizont)
	   }
	   .background(Color.white.ignoresSafeArea(edges: .top))
    }
    
    func buttonWithImage(systemImage: String) -> some View {
	   Button(action: {}) {
		  Image(systemName: systemImage)
			 .resizable()
			 .scaledToFit()
			 .frame(width: Constants.frameWidHeight,
				   height: Constants.frameWidHeight
			 )
			 .foregroundColor(.green)
	   }
    }
}

// MARK: - Constants

fileprivate extension MainNavigationBarView {
    enum Constants {
	   static let arrow = "arrow.left"
	   static let list = "list.clipboard"
	   static let square = "square.and.arrow.up"
	   static let heart = "heart"
	   static let padLeadingArrow = 16.0
	   static let padHorizont = 16.0
	   static let spacingHStack = 16.0
	   static let frameWidHeight = 18.0
    }
}
