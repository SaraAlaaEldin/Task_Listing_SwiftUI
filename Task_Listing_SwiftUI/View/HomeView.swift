//
//  HomeView.swift
//  Task_Listing_SwiftUI
//
//  Created by SaraAlaaEldin on 01/12/2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel:HomeViewModel
  
    var body: some View {
            if !viewModel.items.isEmpty {
                bodyIfLoaded
            }else {
                bodyIFEmpty
            }
    }
    var bodyIfLoaded: some View {
        NavigationView {
            ZStack {
                Color.orange
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack {
                    Rectangle()
                        .frame(height: 0)
                        .background(Color.orange.opacity(0.4))

                    List {
                        ForEach(viewModel.items, id: \.self) { item in
                            NavigationLink(destination:ItemDetails(viewModel:ItemDetailsViewModel(item: item))) {
                            ListItemView(viewModel: ListViewModel(image: item.image_urls?.first ?? "", name: item.name ?? ""))
                            }
                        }
                    
                    }
                    
                    Spacer()
                }
                .navigationTitle(Strings.home.rawValue)

                .font(.title2)
            }
        }
        .onAppear(){
            UITableView.appearance().backgroundColor = UIColor.clear

        }
    }
 

    var bodyIFEmpty:some View {
        VStack{
            Text(Strings.pleaseWait.rawValue)
                .multilineTextAlignment(.center)
                .foregroundColor(.orange)
                .padding()
            ProgressView()
        }
    }
    
  
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

