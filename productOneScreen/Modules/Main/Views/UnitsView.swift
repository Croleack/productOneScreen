//
//  UnitsView.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import SwiftUI

struct UnitsView: View {
    @State private var choosed = "Шт"
    var arrayOptions = [ "Шт","Кг"]
    var body: some View {
	   VStack(spacing: Constants.spacingVStack) {
		  Picker("", selection: $choosed) {
			 ForEach(arrayOptions, id: \.self) {
				Text($0)
			 }
		  }
		  .pickerStyle(.segmented)
		  .padding(.bottom, Constants.padBottom)
		  .padding(.top,Constants.padTop)
		  .padding(.horizontal, Constants.padHorizont)
	   }
    }
}
// MARK: - Constants

fileprivate extension UnitsView {
    enum Constants {
	   static let padHorizont = 16.0
	   static let padTop = 8.0
	   static let padBottom = 8.0
	   static let spacingVStack = 16.0
    }
}
