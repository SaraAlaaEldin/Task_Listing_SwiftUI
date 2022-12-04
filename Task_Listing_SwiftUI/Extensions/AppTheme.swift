//
//  AppTheme.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 03/12/2022.
//

import Foundation
import SwiftUI

enum AppColors {
    static let menuColorHex = 0x1E245F
    static let mainColorHex = 0x2E3690
    static let lightMainColorHex = 0x30366C
    static let secondaryColorHex = 0x5BC199
    static let backgroundColorHex = 0xF6F9FC
    static let darkBackgroundColorHex = 0xE2E7F0
    static let lightBackgroundColorHex = 0xEAEEF5
    static let darkTextColorHex = 0x292929
    static let lightTextColorHex = 0x707070
    static let highlightColorHex = 0xA5B6CF
    static let whiteColorHex = 0xFFFFFF
    static let blackColorHex = 0x2A2A2A
    static let lightGreenHex = 0xc9f2c9
}

enum FontWeight: String {
    case Regular = "Regular"
    case Semibold = "Semibold"
    case Bold = "Bold"
    case Light = "Light"
}

enum FontSize: CGFloat {
    case extraSmall = 10
    case small = 14
    case medium = 16
    case large = 20
    case extraLarge = 24
    
    var adjustedValue: CGFloat {
        switch self {
        case .extraSmall:
            if UIDevice.isPad {
                return 12
            }
            return rawValue
        case .small:
            if UIDevice.isPad {
                return 16
            }
            return rawValue
        case .medium:
            if UIDevice.isPad {
                return 18
            }
            return rawValue
        case .large:
            if UIDevice.isPad {
                return 22
            }
            return rawValue
        case .extraLarge:
            if UIDevice.isPad {
                return 26
            }
            return rawValue
        }
    }
}

extension Color {
    static let menuColor = Color(hex: AppColors.menuColorHex)
    static let mainColor = Color(hex: AppColors.mainColorHex)
    static let lightMainColor = Color(hex: AppColors.lightMainColorHex)
    static let secondaryColor = Color(hex: AppColors.secondaryColorHex)
    static let backgroundColor = Color(hex: AppColors.backgroundColorHex)
    static let darkBackgroundColor = Color(hex: AppColors.darkBackgroundColorHex)
    static let lightBackgroundColor = Color(hex: AppColors.lightBackgroundColorHex)
    static let darkTextColor = Color(hex: AppColors.darkTextColorHex)
    static let lightTextColor = Color(hex: AppColors.lightTextColorHex)
    static let highlightColor = Color(hex: AppColors.highlightColorHex)
    static let whiteColor = Color(hex: AppColors.whiteColorHex)
    static let blackColor = Color(hex: AppColors.blackColorHex)
    static let greenColor = Color(hex: AppColors.lightGreenHex)
}

extension UIColor {
    static let mainColor = UIColor.hex(AppColors.mainColorHex)
    static let secondaryColor = UIColor.hex(AppColors.secondaryColorHex)
    static let backgroundColor = UIColor.hex(AppColors.backgroundColorHex)
    static let darkBackgroundColor = UIColor.hex(AppColors.darkBackgroundColorHex)
    static let lightBackgroundColor = UIColor.hex(AppColors.lightBackgroundColorHex)
    static let darkTextColor = UIColor.hex(AppColors.darkTextColorHex)
    static let lightTextColor = UIColor.hex(AppColors.lightTextColorHex)
    static let highlightColor = UIColor.hex(AppColors.highlightColorHex)
    static let whiteColor = UIColor.hex(AppColors.whiteColorHex)
    static let blackColor = UIColor.hex(AppColors.blackColorHex)
    static let greenColor = UIColor.hex(AppColors.lightGreenHex)

    
}

enum AssetsColor: String {
    case New
    case Confirmed
    case CheckedIn
    case ServedPaid
    case Cancelled
}
extension Color {
    static func appColorAssets(_ name: AssetsColor) -> Color {
        return Color(name.rawValue)
    }
}
extension Font {
    static func style(ofSize size: CGFloat, weight: FontWeight = .Regular) -> Font {
        return Font.custom("\(getFontName(weight: weight))", fixedSize: size)
    }
    
    static func style(ofSize size: FontSize, weight: FontWeight = .Regular) -> Font {
        Font.custom("\(getFontName(weight: weight))", fixedSize: size.adjustedValue)
    }
    
    static func getFontName(weight: FontWeight = .Regular) -> String {
        let fontName = "SFProDisplay"
            return "\(fontName)-\(weight)";
    }
}

extension CGFloat {
    static let xSmallPadding: CGFloat = UIDevice.isPad ? 8 : 4
    static let smallPadding: CGFloat = UIDevice.isPad ? 12 : 8
    static let xMediumPadding: CGFloat = UIDevice.isPad ? 16 : 12
    static let mediumPadding: CGFloat = UIDevice.isPad ? 20 : 16
    static let largePadding: CGFloat = UIDevice.isPad ? 36 : 32
    static let smallCornerRadius: CGFloat = UIDevice.isPad ? 8 : 4
    static let mediumCornerRadius: CGFloat = UIDevice.isPad ? 12 : 8
    static let largeCornerRadius: CGFloat = UIDevice.isPad ? 14 : 12
    static let navigationBarHeight: CGFloat = UIDevice.getSafeArea?.safeAreaInsets.top ?? 44
    static let statusBarHeight: CGFloat = UIDevice.safeArea
    static let defaultBtnHeight: CGFloat = UIDevice.isPad ? 55 : 50
    static let defaultTxtHeight: CGFloat = UIDevice.isPad ? 50 : 45
    static let defaultDropDownHeight: CGFloat = UIDevice.isPad ? 50 : 45
    static let shadowRadius: CGFloat = UIDevice.isPad ? 4 : 2
    static let defaultLogoDimension:CGFloat = UIDevice.isPad ? 500 : 250
    static let defaultImageDimension:CGFloat = UIDevice.isPad ? 200 : 100
}
