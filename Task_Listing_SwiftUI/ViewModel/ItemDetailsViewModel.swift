//
//  ItemDetailsViewModel.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 03/12/2022.
//

import Foundation

class ItemDetailsViewModel:ObservableObject{
    @Published var imageURL:String = ""
    @Published var name:String = ""
    @Published var price:String = ""
    @Published var createdAt:String = ""
    init(item:Results?){
        if let image = item?.image_urls?.first {
            self.imageURL = image
        }

        if let nameItem = item?.name {
            self.name = nameItem
        }
        
        if let price =  item?.price {
            self.price =  price
        }
        if let createdDate =  item?.created_at {
            self.createdAt =  createdDate.getDateString()
        }

    }
    

    
    
    
    
}
