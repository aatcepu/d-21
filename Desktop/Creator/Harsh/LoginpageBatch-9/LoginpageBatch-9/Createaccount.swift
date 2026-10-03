//
//  Createaccount.swift
//  LoginpageBatch-9
//
//  Created by Student on 30/06/26.
//

import SwiftUI

struct Createaccount: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Text("Login")
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
                        .padding()
                    
                    TextField("Email or Phone number", text: $email)
                        .padding()
                }.frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                
                HStack {
                    Image(systemName: "key.fill")
                        .padding()
                        .foregroundStyle(.gray)
                        .font(.system(size:25))
                    
                    if showPassword{
                        TextField("Password", text: $password)
                            .padding()
                    } else {
                        SecureField("Password", text: $password)
                            .padding()
                    }
                    Button {
                        showPassword.toggle()
                    }label: {
                        
                        Image(systemName: showPassword ? "eye.slash.circle" : "eye.circle")
                            .font(.system(size: 20))
                            .foregroundStyle(.gray)
                            .padding()
                    }
                }.frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                
                
                Button {
                }label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 350, height: 60)
                        .background(.harsh)
                        .cornerRadius(20)
                    
                }
                
                
                Text("Your login credentials are secure with our platform and encrypted and never shared")
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundStyle(.gray)
            }.navigationTitle("Welcome, Hi..!")
        }
    }
}
#Preview {
    Createaccount()
}
