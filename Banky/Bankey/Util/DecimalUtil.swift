//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Simon Peter Ojok on 29/06/2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
