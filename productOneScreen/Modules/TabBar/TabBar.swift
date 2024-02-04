//
//  TabBar.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 03.02.2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
	   TabView {
		  Group {
			 tabItem(for: MainView(),
				    image: Constants.imageFirst,
				    text: Constants.textFirst
			 )
			 tabItem(for: CatalogView(),
				    image: Constants.imageSecond,
				    text: Constants.textSecond
			 )
			 tabItem(for: BusketView(),
				    image: Constants.imageThird,
				    text: Constants.textThird
			 )
			 tabItem(for: ProfileView(),
				    image: Constants.imageFourth,
				    text: Constants.textFourth
			 )
		  }
		  .padding(Constants.padding)
	   }
	   .accentColor(.green)
    }
    private func tabItem<T: View>(for content: T, image: String,text: String) -> some View {
	   content
		  .tabItem {
			 Image(systemName: image)
			 Text(text)
		  }
    }
}

// MARK: - Constants

fileprivate extension TabBar {
    enum Constants {
	   static let imageFirst = "tree.circle"
	   static let textFirst = "Главная"
	   static let imageSecond = "square.grid.3x3.topleft.filled"
	   static let textSecond = "Каталог"
	   static let imageThird = "cart"
	   static let textThird = "Корзина"
	   static let imageFourth = "person"
	   static let textFourth = "Профиль"
	   static let padding = 8.0
    }
}
