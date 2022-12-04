//
//  ItemDetails.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 03/12/2022.
//

import SwiftUI
import CachedAsyncImage

struct ItemDetails: View {
    @ObservedObject var viewModel:ItemDetailsViewModel
    
    var body: some View {
              ZStack {
                  Color.orange
                      .opacity(0.1)
                      .ignoresSafeArea()
                  VStack {
                      Rectangle()
                          .frame(height:0)
                          .background(Color.orange.opacity(0.8))

                      if let imageURl = URL(string: viewModel.imageURL) {
                      let urlRequest = URLRequest(url: imageURl)
                      CachedAsyncImage(urlRequest: urlRequest, urlCache: .imageCache){ image in
                          image.resizable()
                      } placeholder: {
                          ProgressView()
                      }
                      .frame(width:.defaultLogoDimension,height: .defaultLogoDimension, alignment: .center)
                      }
                      Text(viewModel.name)
                          .padding()
                          .foregroundColor(.orange)
                          .font(.style(ofSize: .extraLarge, weight: .Bold))
                      
                      VStack(alignment: .center, spacing: .xSmallPadding){
                          HStack {
                              Text(Strings.price.rawValue)
                              Text (Strings.space.rawValue)
                              Text(viewModel.price)
                                  .foregroundColor(.orange)
                                  .font(.style(ofSize: .small, weight: .Semibold))
                          }
                         
                          HStack {
                              Text(Strings.creationDate.rawValue)
                              Text (Strings.space.rawValue)
                              Text(viewModel.createdAt)
                                  .foregroundColor(.orange)
                                  .font(.style(ofSize: .small, weight: .Semibold))

                          }
                      }
                      
                        Spacer()
                  }
              }
      }
        
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails(viewModel: ItemDetailsViewModel(item: nil))
    }
}
