//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    
    var body: some View {
        ZStack {
        
                NavigationView{
                    List(viewModel.appetizers) { appetizer in
                        AppetizerPreview(appetizer: appetizer)
                            .listRowSeparator(.visible)
                            .listRowSeparatorTint(.brandPrimary)
                            .onTapGesture {
                                viewModel.selectedAppetizer = appetizer
                                viewModel.isShowingDetail = true
                            }
                    }
                    .navigationTitle("Appetizers")
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDetail)
                    
                }
                .onAppear {
                    viewModel.getAppetizers()
                }
                .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
                }
                if viewModel.isLoading {
                    LoadingView()
                }
                
                
     
//            VStack {
//                Spacer()
//                Button {
//                    
//                } label: {
//                    Text("hello")
//                        .font(.title2)
//                        .fontWeight(.semibold)
//                        .frame(width: 280, height: 50)
//                        .background(Color.red)
//                        .foregroundColor(.white)
//                        .cornerRadius(10)
//                    
//                    
//                }
//            }
           
          
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
    
}

#Preview {
    AppetizerListView()
}
