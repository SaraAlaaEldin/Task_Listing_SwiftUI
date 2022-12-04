//
//  ColorExtension.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 03/12/2022.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: Int, alpha: Double = 1.0) {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        
        self.init(.sRGB,
                  red: components.R,
                  green: components.G,
                  blue: components.B,
                  opacity: alpha
        )
    }
}
extension UIColor {
    static func hex(_ hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        
        return UIColor(red: components.R, green: components.G, blue: components.B, alpha: alpha)
    }
}

