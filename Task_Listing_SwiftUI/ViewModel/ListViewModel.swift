//
//  ListViewModel.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 01/12/2022.
//

import Foundation
import Combine
import SwiftUI

class ListViewModel:ObservableObject{
    @Published var imageURL:String = ""
    @Published var name:String = ""
    
    init(image:String,name:String){
        self.imageURL = image
        self.name = name
    }
    

    
    
    
    
}
