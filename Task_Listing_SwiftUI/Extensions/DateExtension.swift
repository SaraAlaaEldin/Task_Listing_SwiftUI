//
//  DateExtension.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 04/12/2022.
//

import Foundation

extension Date {
    func getStrDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        dateFormatter.locale = Locale(identifier: "en")
        return dateFormatter.string(from: self)
    }
    
    func getStrTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss aa"
        dateFormatter.locale = Locale(identifier: "en")
        return dateFormatter.string(from: self)
    }
}


extension String {
    
    func getDateString()->String{
        let splitDate = self.components(separatedBy: " ")
        return splitDate.first ?? ""
    }
    func convertDateFormat() -> String {

         let olDateFormatter = DateFormatter()
         olDateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"

        guard let oldDate = olDateFormatter.date(from: self) else {
            return self
            
        }

         let convertDateFormatter = DateFormatter()
         convertDateFormatter.dateFormat = "MMM dd yyyy h:mm a"

         return convertDateFormatter.string(from: oldDate)
    }
    
}


extension Data {
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}
