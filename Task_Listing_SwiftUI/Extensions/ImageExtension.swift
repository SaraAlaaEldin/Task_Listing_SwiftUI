//
//  ImageExtension.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 03/12/2022.
//

import Foundation
import UIKit

extension UIImage {
func convertImageToBase64String () -> String {
    return self.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
}
}

extension String {
    func convertBase64ToImage() -> UIImage? {
        let newString = self.replacingOccurrences(of: "data:image/png;base64,", with: "")
        guard let imageData = Data(base64Encoded: newString, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)else {
            return UIImage(named: "")
        }
        return UIImage(data: imageData)
        }

}



// URLCache+imageCache.swift

extension URLCache {
    
    static let imageCache = URLCache(memoryCapacity: 512*1000*1000, diskCapacity: 10*1000*1000*1000)
}
