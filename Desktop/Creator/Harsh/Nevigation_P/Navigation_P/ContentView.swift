//
//  ContentView.swift
//  Nevigation_P
//
//  Created by Student on 29/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var movetoNext:Bool = false
    var body: some View {
        NavigationStack {
            VStack{
                Button {
                    movetoNext = true
                } label: {
                    Text("Go next page")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .frame(width: 200,height: 55)
                        .background(Color(.blue))
                        .cornerRadius(10)
                }
                        .navigationDestination(isPresented: $movetoNext){ NextPage()
                                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
