//
//  NetWorkError.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 02/12/2022.
//

import Foundation
import Alamofire

struct NetworkError: Error {
    let initialError: AFError
    let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}


struct ErrorStruct: Codable {

    let error: ErrorBackend

}
struct ErrorBackend: Codable {

    let code: String
    let message: String
    let details: String
    let data: DataError
    let validationErrors: [ValidationErrors]

}


struct DataError: Codable {

    let additionalProp1: String
    let additionalProp2: String
    let additionalProp3: String

}

struct ValidationErrors: Codable {

    let message: String
    let members: [String]

}
