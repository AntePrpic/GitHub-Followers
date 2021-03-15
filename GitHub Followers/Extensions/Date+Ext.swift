//
//  Date+Ext.swift
//  GitHub Followers
//
//  Created by Ante on 15.03.2021..
//

import Foundation


extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
