//
//  NetworkProtocolExtension.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 02/12/2022.
//

import Foundation
import Alamofire
import Combine

class NetworkRequest {
    static let shared: NetworkRequestProtocol = NetworkRequest()
    private init() { }
}

extension NetworkRequest: NetworkRequestProtocol {
    func fetchListOfItems() -> AnyPublisher<DataResponse<ListItems, NetworkError>, Never> {
        let url = URL(string: "\(API.GETLIST.rawValue)")!

        return AF.request(url, method: .get,headers: nil)
            .validate()
            .publishDecodable(type: ListItems.self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    
}
