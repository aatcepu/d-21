//
//  ContentView.swift
//  login exam
//
//  Created by Student on 22/08/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = "admin"
    @State private var password = "1234"
    @State private var message = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
    
            Text("Login")
                .font(.largeTitle)
                .bold()
            
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
            
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            
            Button("Login") {
                
                if username == "admin" && password == "1234" {
                    message = "Login Successful"
                } else {
                    message = "Access Denied"
                }
            }
            .buttonStyle(.borderedProminent)
            
            
            Text(message)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


