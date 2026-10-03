//
//  register.swift
//  Batcholdies
//
//  Created by Student on 15/09/26.
//

import SwiftUI

struct register: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirm_password = ""
    var body: some View {
        Text("Create Account")
            .foregroundStyle(.color)
            .font(.system(size:25))
            .bold()
            .padding()
        Text("Create an account so that you can explore based on your personal interest!!")
            .font(.system(size:12))
            .multilineTextAlignment(.center)
            .padding(.bottom, 15)
        HStack(spacing: 20){
            Image(systemName: "person.fill")
                .padding(.leading, 20)
            TextField("Email", text: $email)
            
        }
        .frame(width: 350, height: 60)
        .background(.color.opacity(0.1))
        .cornerRadius(15)
        
        HStack(spacing: 20){
            Image(systemName: "key.fill")
                .padding(.leading, 20)
            SecureField("password", text: $password)
        }
        .frame(width: 350, height: 60)
        .background(.color.opacity(0.1))
        .cornerRadius(15)
        .padding()
        
        HStack(spacing: 20){
            Image(systemName: "key.fill")
                .padding(.leading, 20)
            SecureField("confirm password", text: $password)
        }
        .frame(width: 350, height: 60)
        .background(.color.opacity(0.1))
        .cornerRadius(15)
        .padding(.bottom,15)
        
        Text("Sign up")
            .foregroundStyle(.white)
            .frame(width: 350, height: 50)
            .background(.color)
            .cornerRadius(10)
            .padding(.bottom,30)
            //.bold()
        NavigationLink(destination:LoginView()){
            Text("Already have an account?")
                .padding(.bottom,15)
                .font(.system(size:15))
                .foregroundStyle(.black)
        }
        Text("or continue with")
            .font(.system(size:13))
            .foregroundStyle(.color)
        HStack{
            Image("Image")
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding(.trailing, 10)
            Image("Vector-3")
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding(.trailing, 10)
            Image("Vector-4")
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding(.trailing, 10)
        }
        .padding(.bottom, 100)
        
        
    }
}

#Preview {
    register()
}
