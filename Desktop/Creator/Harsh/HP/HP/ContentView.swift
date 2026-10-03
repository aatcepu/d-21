//
//  ContentView.swift
//  HP
//
//  Created by Student on 29/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            Image(.indoorPlantsBro)
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400)
                .opacity(0.30)
            VStack {
                Text("Welcome Buddy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .foregroundColor(.purple)
                
                HStack {
                    Image(systemName: "envelope")
                        .padding()
                        .foregroundStyle(.gray)
                    TextField("Your Email", text: $email)
                }.frame(width: 350, height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    .shadow(radius: 20)
                HStack {
                    Image(systemName: "key")
                        .padding()
                        .foregroundStyle(.gray)
                    TextField("Password", text: $password)
                }.frame(width: 350, height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(25)
                    .shadow(radius: 20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
