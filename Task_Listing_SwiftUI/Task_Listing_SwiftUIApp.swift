//
//  Task_Listing_SwiftUIApp.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 01/12/2022.
//

import SwiftUI

@main
struct Task_Listing_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
