//
//  String+Ext.swift
//  GitHub Followers
//
//  Created by Ante on 15.03.2021..
//

import Foundation

extension String {
    // https://nsdateformatter.com/

    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeZone = .current
            
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplay() -> String {
        guard let date = self.convertToDate() else {
            return "N/A"
        }
        return date.convertToMonthYearFormat()
    }
}
