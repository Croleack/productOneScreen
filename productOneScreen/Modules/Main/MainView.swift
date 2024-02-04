//
//  ContentView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 03.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
	   NavigationView {
		  VStack {
			 MainNavigationBarView()
			 Divider()
			 ScrollView(.vertical, showsIndicators: false) {
				VStack(alignment:.leading ,spacing: .zero){
				    ButtonPriceView()
				    TeaView()
				    ReviewsView()
				    NameView()
				    СountryView()
				    DescriptionView()
				    BasicCharacteristicsView()
				    HeadingView()
				    FeedbackView()
				    LeaveFeedbackView()
				    Divider()
				    UnitsView()
				    PriceView()
				}
			 }
		  }
	   }
	   .navigationBarHidden(true)
    }
}

