import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Subjects")
                        .font(.system(size: 28))
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                    
                    NavigationLink {
                        htmlorg()
                    } label: {
                        card(image: .HTML, name: "HTML Programming", color: .red)
                    }
                    
                    NavigationLink {
                        javaorg()
                    } label: {
                        card(image: .JAVA, name: "Java Programming", color: .brown)
                    }
                    
                    NavigationLink {
                        corg()
                    } label: {
                        card(image: .c, name: "C Programming", color: .blue)
                    }
                    
                    NavigationLink {
                        pythonorg()
                    } label: {
                        card(image: .python, name: "Python Programming", color: .green)
                    }
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
        }
    }
    
    func card(image: ImageResource, name: String, color: Color) -> some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            Text(name)
                .foregroundStyle(.black)
                .fontWeight(.bold)
        }
        .frame(width: 350, height: 150)
        .background(color.opacity(0.20))
        .cornerRadius(20)
    }
}

#Preview {
    HomePage()
}
