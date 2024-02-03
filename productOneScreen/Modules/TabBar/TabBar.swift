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
				    image: "tree.circle",
				    text: "Главная"
			 )
			 tabItem(for: CatalogView(),
				    image: "square.grid.3x3.topleft.filled",
				    text: "Каталог"
			 )
			 tabItem(for: BusketView(),
				    image: "cart",
				    text: "Корзина"
			 )
			 tabItem(for: ProfileView(),
				    image: "person",
				    text: "Профиль"
			 )
		  }
		  .padding(8)
	   }
	   .accentColor(.green)
    }
    private func tabItem<T: View>(for content: T,
						    image: String,
						    text: String) -> some View {
	   content
		  .tabItem {
			 Image(systemName: image)
			 Text(text)
		  }
    }
}
