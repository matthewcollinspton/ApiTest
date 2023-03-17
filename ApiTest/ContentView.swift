//
//  ContentView.swift
//  ApiTest
//
//  Created by Collins, Matthew - MC on 17/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var apiManager = ApiManager()
    
    var body: some View {
        VStack {
            Button("Tap for data") {
                Task {
                    await apiManager.getData()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
