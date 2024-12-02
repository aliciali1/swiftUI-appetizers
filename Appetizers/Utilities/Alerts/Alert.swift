//
//  Alert.swift
//  Appetizers
//
//  Created by Alicia Li on 6/20/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: -Network Alerts
    static let invalidData       = AlertItem(title: Text("Server Error"),
                                             message: Text("The data received from the server was invalid. Please contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidResponse   = AlertItem(title: Text("Server Error"),
                                             message: Text("Invalid response from the server. Please try again later or contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidURL        = AlertItem(title: Text("Server Error"),
                                             message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let unabletoComplete  = AlertItem(title: Text("Server Error"),
                                             message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                             dismissButton: .default(Text("OK")))
    
    //MARK: -Form Alerts
    static let invalidForm  = AlertItem(title: Text("Invalid Form"),
                                             message: Text("Form is not filled out."),
                                             dismissButton: .default(Text("OK")))
    static let invalidEmail  = AlertItem(title: Text("Server Error"),
                                             message: Text("Email is not valid."),
                                             dismissButton: .default(Text("OK")))
    static let userSaveSuccess  = AlertItem(title: Text("Profile Saved"),
                                             message: Text("Your account information was successfully saved."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                             message: Text("Your account information was not successfully saved."),
                                             dismissButton: .default(Text("OK")))
}
