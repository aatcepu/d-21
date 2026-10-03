import SwiftUI

struct ContentView: View {
    @State private var changescreen: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Image(.instagramIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    Text("We are selling the best farmfresh organic vegetables and fruits")
                        .font(.system(size: 40))
                        .fontDesign(.rounded)
                        .foregroundColor(.green)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    // 1. Updated Button Action
                    Button {
                        changescreen = true // This triggers the navigation
                    } label: {
                        Text("Shop now")
                            .font(.system(size: 20))
                            .foregroundColor(.white) // Added for visibility
                            .frame(width: 150, height: 50)
                            .background(Color.orange)
                            .cornerRadius(60)
                    }
                    
                    Spacer()
                        .frame(height: 90)
                    
                    Text("Made by family in vadodara IN copyright(c) all rights reserved")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
