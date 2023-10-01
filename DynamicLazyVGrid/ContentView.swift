//  /*
//
//  Project: DynamicLazyVGrid
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 01.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
                ForEach(0..<10) {tem in
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(height: 100)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
