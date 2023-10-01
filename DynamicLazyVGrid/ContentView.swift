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
    @State var Height: CGFloat = 120
    @State var heightSecond: CGFloat = 150
    
    let colors : [Color] = [.black.opacity(0.1), .black.opacity(0.2), .black.opacity(0.3), .black.opacity(0.4), .black.opacity(0.5), .black.opacity(0.6), .black.opacity(0.7), .black.opacity(0.8), .black.opacity(0.9), .black.opacity(0.1)]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: Height), spacing: 10)], spacing: 10) {
                ForEach(0..<10) {item in
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(height: heightSecond)
                        .foregroundColor(colors[item % colors.count])
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
