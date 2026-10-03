//
//  ContentView.swift
//  project
//
//  Created by Student on 27/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("Hello, world!")
                .background(Color.red)
                .frame(width: 200)
                .background(Color.gray)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .frame(height: 200)
                .background(Color.yellow)
                .frame(maxHeight: .infinity)
                .background(Color.green)
    }
}

#Preview {
    ContentView()
}
