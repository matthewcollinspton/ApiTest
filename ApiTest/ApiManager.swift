//
//  ApiManager.swift
//  ApiTest
//
//  Created by Collins, Matthew - MC on 17/03/2023.
//

import Foundation

class ApiManager {
    
    func getData() async {
        guard let url = URL(string: "https://tradestie.com/api/v1/apps/reddit") else {
            print("Invalid URL")
            return
        }
    }
}
