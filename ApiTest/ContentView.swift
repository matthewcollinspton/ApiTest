//
//  ContentView.swift
//  ApiTest
//
//  Created by Collins, Matthew - MC on 17/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var apiManager = ApiManager()
    
    @State private var count = 0
    
    var body: some View {
        VStack {
            Button("Tap for data") {
                Task {
                    await apiManager.getData()
                }
            }
            
            Button("Count: \(count)") {
                count += 1
            }
            
            Text("\(apiManager.firstStock?.ticker ?? "no stock")")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
