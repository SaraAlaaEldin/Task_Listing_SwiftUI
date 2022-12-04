//
//  HomeViewModel.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 02/12/2022.
//

import Foundation
import Combine
import SwiftUI


class HomeViewModel:ObservableObject{
    var dataManager:NetworkRequestProtocol
    var subscriptions: [AnyCancellable] = []

    @Published var itemsListObject:ListItems?
    @Published var items = [Results]()
    var loadedItemList = PassthroughSubject<[Results],Never>()
    var openDetailsScreen = PassthroughSubject<Results,Never>()
    init(dataManager: NetworkRequestProtocol = NetworkRequest.shared){
        self.dataManager = dataManager
        self.fetchListOfItems()
    }

    
    
    func fetchListOfItems(){
        dataManager.fetchListOfItems().sink{ [weak self] response in
            if let items = response.value {
                self?.itemsListObject = items
                if let result = self?.itemsListObject?.results {
                    for item in result {
                        self?.items.append(item)
                    }
                    self?.loadListItems()
                }
            }else {
                //MARK:error
            }
        }.store(in: &subscriptions)
    }
  
    func loadListItems(){
        loadedItemList.send(items)
    }
        
    func openItemDetails(item:Results){
        openDetailsScreen.send(item)
    }
}
