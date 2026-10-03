//
//  ContentView.swift
//  LoginpageBatch-9
//
//  Created by Student on 30/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.20)
                    .ignoresSafeArea()
                
                VStack (spacing: 20){
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.rounded)
                        .offset(x:0, y:0)
                    Button {
                        
                    }label: {
                        HStack(spacing:25){
                            Image(.socialAppleMac65)
                                .resizable()
                                .scaledToFit()
                                .frame(width:27, height:27)
                            Text("Sign In with Apple")
                                .font(.system(size: 23))
                                .foregroundStyle(.black)
                        }.frame(width:350, height:60)
                            .background(.white)
                            .cornerRadius(30)
                            .shadow(radius: 14)
                    }
                    Button {
                        
                    }label: {
                        HStack{
                            Image(.googleIconIconsCom62736)
                                .resizable()
                                .scaledToFit()
                                .frame(width:27, height:27)
                            Text("Sign In with Google")
                                .font(.system(size: 23))
                                .foregroundStyle(.harsh)
                        }.frame(width:350, height:60)
                            .background(.white)
                            .cornerRadius(30)
                            .shadow(radius: 14)
                    }
                    .padding(.bottom)
                    .padding(.bottom)
                    
                    Text("or get a link emailed to you")
                        .foregroundStyle(.gray)
                    
                    
                    TextField("Work email address", text:$email)
                        .padding()
                        .frame(width:350, height:60)
                        .background(Color(.systemGray6))
                        .cornerRadius(30)
                        .shadow(radius: 14)
                    
                    Button {
                    }label: {
                        Text("Email me signup link")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .frame(width: 350, height: 65)
                            .background(.harsh)
                            .cornerRadius(30)
                    }
                    .padding(.bottom)
                    .padding(.bottom)
                    Divider()
                    
                    Text("You are completely safe")
                    Button {
                    }label: {
                        Text("Read our Terms & Conditions")
                            .foregroundStyle(.harsh)
                    }
                }
            }
        }
    }
}
#Preview {
        ContentView()
}
