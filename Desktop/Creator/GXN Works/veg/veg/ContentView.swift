import SwiftUI

struct ContentView: View {
    @State private var changescreen: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack(spacing: 20) {
                        // Using a system symbol as a placeholder if your asset isn't loaded
                        Image(systemName: "leaf.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.green)
                        
                        Text("We are selling the best farmfresh organic vegetables and fruits")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                            .foregroundColor(.green)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        Button {
                            changescreen = true
                        } label: {
                            Text("Shop now")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 55)
                                .background(Color.orange)
                                .clipShape(Capsue())
                                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 5)
                        }
                    }
                    .padding(.top, 40)
                }
                
                // Footer stays at the bottom
                Text("Made by family in vadodara IN\ncopyright(c) all rights reserved")
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10)
            }
            .navigationDestination(isPresented: $changescreen) {
                vegApp()
            }
        }
    }
}

// Placeholder for your second screen
struct vegApp: View {
    var body: some View {
        VStack {
            Text("Fresh Vegetables")
                .font(.largeTitle)
                .bold()
            Text("Items will appear here...")
        }
        .navigationTitle("Store")
    }
}

#Preview {
    ContentView()
}

