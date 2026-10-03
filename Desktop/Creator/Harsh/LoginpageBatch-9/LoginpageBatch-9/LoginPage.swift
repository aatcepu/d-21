//
//  LoginPage.swift
//  LoginpageBatch-9
//
//  Created by Student on 30/06/26.
//

import SwiftUI

struct LoginPage: View {
    @State private var moveToNext: Bool = false
    @State private var goToLogin: Bool = false
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.gray.opacity(0.20)
                    .ignoresSafeArea()
                
                
                VStack (spacing: 20) {
                    
                    Image(.sentMessageCuate1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                    Button {
                        moveToNext = true
                    }label: {
                        Text("Get Started")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 60)
                            .background(.harsh)
                            .cornerRadius(30)
                    }
                    .padding()
                    Button {
                        goToLogin = true
                    }label: {
                        Text("Log In")
                            .foregroundStyle(.harsh)
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                    }.navigationDestination(isPresented: $goToLogin){
                        Createaccountad()
                    }
                    HStack {
                        Text("New around here?")
                        
                        Button {
                            moveToNext = true
                        }label: {
                            Text("Sign In")
                                .foregroundStyle(.harsh)
                        }
                        .navigationDestination(isPresented: $moveToNext){
                            ContentView()
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    LoginPage()
}
