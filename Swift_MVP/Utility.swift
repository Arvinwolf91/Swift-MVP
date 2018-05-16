//
//  Utility.swift
//  Swift_MVP
//
//  Created by Arvin Sanmuga Rajah on 16/05/2018.
//  Copyright © 2018 balitax. All rights reserved.
//

import UIKit

class Utility {
    
    class func formatCurrency(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2;
        formatter.locale = Locale(identifier: "id_ID")
        var result = formatter.string(from: value as NSNumber);
        result = result?.replacingOccurrences(of: "Rp", with: "Rp. ")
        return result!
    }
}
