//
//  Order.swift
//  HotCoffee
//
//  Created by Simon Peter Ojok on 17/07/2022.
//

import Foundation

enum CoffeeType: String, Codable, CaseIterable {
    case cappuccino
    case latte
    case espressino
    case cortado
}

enum CoffeeSize: String, Codable, CaseIterable {
    case small
    case medium
    case large
}

struct Order: Codable {
    
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
    
}

extension Order {
    init?(_ vm: AddCoffeeOrderViewModel) {
        self.name = vm.name ?? ""
        self.email = vm.email ?? ""
        self.type = CoffeeType(rawValue: vm.selectedType!.lowercased()) ?? .cappuccino
        self.size = CoffeeSize(rawValue: vm.selectedSize!.lowercased()) ?? .large
    }
}
