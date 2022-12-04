//
//  ResultModel.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 02/12/2022.
//

import Foundation

struct Results: Codable ,Hashable{
    var created_at: String?
    var price: String?
    var name: String?
    var uid: String?
    var image_ids: [String]?
    var image_urls: [String]?
    var image_urls_thumbnails: [String]?
}
