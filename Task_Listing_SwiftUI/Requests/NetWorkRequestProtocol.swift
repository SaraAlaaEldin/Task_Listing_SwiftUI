//
//  NetWorkRequest.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 02/12/2022.
//

import Foundation
import Alamofire
import Combine


protocol NetworkRequestProtocol {
    func fetchListOfItems() -> AnyPublisher<DataResponse<ListItems, NetworkError>, Never>
}

