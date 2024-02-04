//
//  PriceButtonViewModel.swift
//  productOneScreen
//
//  Created by Enzhe Gaysina on 04.02.2024.
//

import Foundation

class PriceButtonViewModel: ObservableObject {
    @Published var count: Int = 1
    private let priceItem = 120.0
    
    var totalPrice: Double {
	   return Double(count) * priceItem
    }
    
    func increment() {
	   count += 1
    }
    
    func decrement() {
	   if count > 1 {
		  count -= 1
	   }
    }
}
