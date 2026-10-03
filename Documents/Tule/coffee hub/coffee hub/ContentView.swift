//
//  ContentView.swift
//  coffee hub
//
//  Created by Student on 15/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Image")
                .resizable()
                .scaledToFit()
                .frame(width:300,height:300)
                .clipShape(Circle())
                //.padding(.bottom, 250)
            Text("Welcome to Coffee Hub")
                .foregroundStyle(.darkBrown)
                //.background(.darkBrown)
                .font(.system(size:27))
                .fontWeight(.bold)
                .padding()
            Text("Already have an account?")
                .font(.system(size:15))
            Text("Login")
                .foregroundStyle(.white)
                .frame(width:350, height:50)
                .background(.darkBrown)
                .cornerRadius(12)
                .padding()
            Text("Dont have an account yet?")
                .font(.system(size:15))
            Text("Sign up")
                .foregroundStyle(.white)
                .frame(width:350, height:50)
                .background(.darkBrown)
                .cornerRadius(12)
                .padding()
                
        }
        //.padding()
    }
}

#Preview {
    ContentView()
}
