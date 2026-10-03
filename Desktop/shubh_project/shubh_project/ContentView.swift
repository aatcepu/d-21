import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var GoToHome: Bool = false
    @State private var showError: Bool = false
    
    @State private var Email = "shubhsingh0427@gmail.com"
    @State private var Password = "123456789"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                Image(.HTML)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x: 100, y: -300)
                    .opacity(0.08)
                Image(.c)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x: 100, y: 10)
                    .opacity(0.08)
                Image(.JAVA)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x: -100, y: 150)
                    .opacity(0.08)
                Image(.python)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x: 100, y: 300)
                    .opacity(0.08)
                
                VStack(spacing: 20) {
                    Text("Programmer's Corner")
                        .font(.system(size: 30))
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .shadow(radius: 20)
                    
                    HStack {
                        TextField("Email or Phone Number", text: $email)
                            .keyboardType(email.first?.isNumber == true ? .numberPad : .emailAddress)
                        Spacer()
                        Image(systemName: "envelope.fill")
                            .foregroundStyle(.gray)
                    }
                    .padding()
                    .frame(width: 350, height: 60)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    
                    HStack {
                        SecureField("Password", text: $password)
                        Spacer()
                        Image(systemName: "key.fill")
                            .foregroundStyle(.gray)
                    }
                    .padding()
                    .frame(width: 350, height: 60)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    
                    if showError {
                        Text("Invalid email or password")
                            .foregroundStyle(.red)
                            .font(.caption)
                    }
                    
                    Button {
                        if email == Email && password == Password {
                            showError = false
                            GoToHome = true
                        } else {
                            showError = true
                        }
                    } label: {
                        Text("Login")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 350, height: 50)
                            .background(.blue)
                            .cornerRadius(15)
                    }
                    .padding(.top, 10)
                    
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                            .foregroundStyle(.gray)
                        Button {
                        } label: {
                            Text("Sign up")
                                .foregroundStyle(.blue)
                                .fontWeight(.semibold)
                        }
                    }
                    .font(.subheadline)
                    .padding(.top, 4)
                }
                .padding()
            }
            .navigationDestination(isPresented: $GoToHome) {
                HomePage()
            }
            .onAppear {
                email = ""
                password = ""
                showError = false
            }
        }
    }
}

#Preview {
    ContentView()
}
