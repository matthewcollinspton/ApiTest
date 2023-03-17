//
//  ApiManager.swift
//  ApiTest
//
//  Created by Collins, Matthew - MC on 17/03/2023.
//

import Foundation

class ApiManager {
    
    func getData() async {
        
        // INSTANTIATE AND HANDLE A NEW URL OBJECT
        guard let url = URL(string: "https://tradestie.com/api/v1/apps/reddit") else {
            print("Invalid URL")
            return
        }
        
        do {
            // START A URL SESSION TO GET DATA
            let (data, _) = try await URLSession.shared.data(from: url)
            print(data)
            
            // DECODE THE DATA TO BE ABLE TO MAKE SENSE OF IT IN JSON
            
        }
        catch {
            print("Invalid data")
        }
    }
}
