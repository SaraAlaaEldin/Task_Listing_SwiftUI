//
//  ListItemView.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 01/12/2022.
//

import SwiftUI
import CachedAsyncImage

struct ListItemView: View {
    @ObservedObject var viewModel:ListViewModel
    var body: some View {
        HStack(alignment: .center, spacing: .xSmallPadding){
            if let imageURl = URL(string: viewModel.imageURL) {
            let urlRequest = URLRequest(url: imageURl)
            CachedAsyncImage(urlRequest: urlRequest, urlCache: .imageCache){ image in
                image.resizable()
                    .cornerRadius(.smallCornerRadius)
            } placeholder: {
                ProgressView()
            }
            .frame(width:.defaultImageDimension,height: .defaultImageDimension, alignment: .center)
            }
            Text(viewModel.name)
                .padding()
                .foregroundColor(.orange)
                .font(.style(ofSize: .medium, weight: .Bold))
              
        }
}
}
struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(viewModel: ListViewModel(image: "", name: ""))
    }
}
