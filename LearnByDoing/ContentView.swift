//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Y K on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
//                    CardView()
                }
            }
            .padding(20)
        }
    }
}




#Preview {
    ContentView()
}
