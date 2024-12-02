//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Alicia Li on 6/19/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published  var isShowingDetail = false
    @Published  var selectedAppetizer: Appetizer?
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true 
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unabletoComplete
                        
                    }
                }
            }
        }
    }
}
