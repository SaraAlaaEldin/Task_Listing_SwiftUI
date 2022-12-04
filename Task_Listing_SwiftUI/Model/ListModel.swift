//
//  ListModel.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 01/12/2022.
//

import Foundation


struct ListItems: Codable {
    var results: [Results]?
    var pagination: Pagination?
}
