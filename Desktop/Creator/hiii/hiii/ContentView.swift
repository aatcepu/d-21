import SwiftUI

// MARK: - Main Fantasy Homepage
struct ContentView: View {
    @State private var ambientPulse = false
    
    var body: some View {
        ZStack {
            // 1. Editorial Fantasy Backdrop
            FantasyBackgroundView()
            
            // 2. Main Content
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 32) {
                    
                    // Cinematic Header
                    BookHeaderView()
                        .padding(.horizontal, 24)
                        .padding(.top, 20)
                    
                    // Current Act / Main Quest Tracker
                    CurrentChapterCard(pulse: $ambientPulse)
                        .padding(.horizontal, 24)
                    
                    // Novel Shelf / Deck Selection
                    VStack(alignment: .leading, spacing: 16) {
                        Text("AVAILABLE CHRONICLES")
                            .font(.system(.footnote, design: .serif))
                            .kerning(2) // Elegant tracking
                            .foregroundColor(Color(red: 0.75, green: 0.65, blue: 0.5))
                            .padding(.horizontal, 24)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ChronicleCard(title: "The Whispering Woods", author: "Volume I", Sigil: "leaf.fill", progress: 0.7)
                                ChronicleCard(title: "The Iron Citadel", author: "Volume II", Sigil: "shield.chess.fill", progress: 0.3)
                                ChronicleCard(title: "Court of the Sun", author: "Volume III", Sigil: "sun.max.fill", progress: 0.0)
                            }
                            .padding(.horizontal, 24)
                        }
                    }
                    
                    // Alchemical / Character Attributes
                    CharacterAttributesView()
                        .padding(.horizontal, 24)
                        .padding(.bottom, 60)
                }
            }
        }
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                ambientPulse.toggle()
            }
        }
    }
}

// MARK: - Rich Backdrop Texture
struct FantasyBackgroundView: View {
    var body: some View {
        // Deep, ink-black blending into a dark charcoal charcoal/amber tone
        LinearGradient(
            colors: [
                Color(red: 0.04, green: 0.04, blue: 0.04),
                Color(red: 0.08, green: 0.07, blue: 0.06)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
        .overlay(
            // A subtle vignettes to focus attention to the center
            RadialGradient(
                colors: [.clear, .black.opacity(0.6)],
                center: .center,
                startRadius: 200,
                endRadius: 500
            )
            .ignoresSafeArea()
        )
    }
}

// MARK: - Cinematic Book Header
struct BookHeaderView: View {
    var body: some View {
        VStack(spacing: 4) {
            Text("THE ARCHIVES")
                .font(.system(.caption, design: .serif))
                .kerning(4)
                .foregroundColor(Color(red: 0.6, green: 0.5, blue: 0.4))
            
            Text("Grand Scholar")
                .font(.system(.title2, design: .serif))
                .italic()
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.9, green: 0.85, blue: 0.75))
            
            // Divider line with an ornamental center diamond
            HStack {
                Rectangle().fill(LinearGradient(colors: [.clear, Color(red: 0.5, green: 0.4, blue: 0.3)], startPoint: .leading, endPoint: .trailing)).frame(height: 1)
                Image(systemName: "rhombus.fill")
                    .font(.system(size: 6))
                    .foregroundColor(Color(red: 0.7, green: 0.55, blue: 0.35))
                Rectangle().fill(LinearGradient(colors: [Color(red: 0.5, green: 0.4, blue: 0.3), .clear], startPoint: .leading, endPoint: .trailing)).frame(height: 1)
            }
            .padding(.top, 4)
        }
    }
}

// MARK: - Current Chapter / Focus Card
struct CurrentChapterCard: View {
    @Binding var pulse: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("CURRENT READ")
                    .font(.system(.caption2, design: .serif))
                    .kerning(1.5)
                    .foregroundColor(Color(red: 0.7, green: 0.55, blue: 0.35))
                Spacer()
                HStack(spacing: 4) {
                    Circle()
                        .fill(Color(red: 0.8, green: 0.6, blue: 0.3))
                        .frame(width: 6, height: 6)
                        .opacity(pulse ? 0.3 : 1.0)
                    Text("ACT II")
                        .font(.system(.caption2, design: .monospaced))
                        .foregroundColor(.white.opacity(0.6))
                }
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Chapter VII: The Obsidian Tower")
                    .font(.system(.title3, design: .serif))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.95, green: 0.9, blue: 0.85))
                
                Text("Beneath the shadow of the fractured peaks, a silent light begins to form...")
                    .font(.system(.callout, design: .serif))
                    .italic()
                    .foregroundColor(.white.opacity(0.5))
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Premium, thin timeline/progress marker
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.white.opacity(0.05))
                    .frame(height: 2)
                Capsule()
                    .fill(Color(red: 0.7, green: 0.55, blue: 0.35))
                    .frame(width: 140, height: 2)
                    .shadow(color: Color(red: 0.7, green: 0.55, blue: 0.35).opacity(0.3), radius: 4)
            }
            .padding(.top, 8)
        }
        .padding(24)
        .background(
            // Matte dark slate paper texture finish
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(red: 0.12, green: 0.11, blue: 0.1))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(red: 0.3, green: 0.25, blue: 0.2), lineWidth: 1)
        )
    }
}

// MARK: - Elegant Chronicle Book Card
struct ChronicleCard: View {
    let title: String
    let author: String
    let Sigil: String
    let progress: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            // Elegant Icon Accent
            Image(systemName: Sigil)
                .font(.title3)
                .foregroundColor(Color(red: 0.8, green: 0.65, blue: 0.45))
                .frame(width: 44, height: 44)
                .background(Color.white.opacity(0.03))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.4, green: 0.35, blue: 0.28), lineWidth: 0.5)
                )
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(author.uppercased())
                    .font(.system(.caption2, design: .serif))
                    .kerning(1)
                    .foregroundColor(.white.opacity(0.4))
                
                Text(title)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color(red: 0.9, green: 0.85, blue: 0.8))
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            if progress > 0 {
                ProgressView(value: progress)
                    .tint(Color(red: 0.6, green: 0.5, blue: 0.35))
                    .scaleEffect(x: 1, y: 0.5, anchor: .center)
                    .padding(.top, 8)
            } else {
                Text("LOCKED")
                    .font(.system(.caption2, design: .monospaced))
                    .foregroundColor(.white.opacity(0.2))
                    .padding(.top, 8)
            }
        }
        .padding(20)
        .frame(width: 160, height: 220)
        .background(
            Color(red: 0.14, green: 0.13, blue: 0.12)
        )
        .cornerRadius(8) // Sharp cornered aesthetic feels more classic/antique
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(red: 0.25, green: 0.22, blue: 0.18), lineWidth: 1)
        )
    }
}

// MARK: - Character Attributes Grid
struct CharacterAttributesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("CHARACTER ALCHEMY")
                .font(.system(.footnote, design: .serif))
                .kerning(2)
                .foregroundColor(Color(red: 0.7, green: 0.6, blue: 0.45))
            
            HStack(spacing: 16) {
                AttributeTile(label: "Lore Level", value: "IV", icon: "book.closed")
                AttributeTile(label: "Shards Found", value: "12 / 30", icon: "sparkles")
            }
        }
    }
}

struct AttributeTile: View {
    let label: String
    let value: String
    let icon: String
    
    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 16))
                .foregroundColor(Color(red: 0.7, green: 0.55, blue: 0.35))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(label)
                    .font(.system(.caption2, design: .serif))
                    .foregroundColor(.white.opacity(0.4))
                Text(value)
                    .font(.system(.body, design: .serif))
                    .bold()
                    .foregroundColor(Color(red: 0.9, green: 0.85, blue: 0.78))
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
        .background(Color(red: 0.1, green: 0.09, blue: 0.08))
        .cornerRadius(6)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.white.opacity(0.05), lineWidth: 1)
        )
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
