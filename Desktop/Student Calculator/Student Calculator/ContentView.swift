import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var maths: String = ""
    @State private var physics: String = ""
    @State private var chemistry: String = ""
    @State private var totalMarks: Double = 0.0
    @State private var percentage: Double = 0.0
    @State private var grade: String = ""

    var body: some View {
        ZStack {

            Color.orange.opacity(0.20)
                .ignoresSafeArea()

            Image(systemName: "graduationcap.fill")
                .font(.system(size: 100))
                .foregroundStyle(.blue.opacity(0.10))
                .offset(x: 100, y: -300)
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 140))
                .foregroundStyle(.blue.opacity(0.10))
                .offset(x: -100, y: -100)
            Image(systemName: "pencil.and.ruler.fill")
                .font(.system(size: 120))
                .foregroundStyle(.blue.opacity(0.10))
                .offset(x: 100, y: 100)
            Image(systemName: "book.fill")
                .font(.system(size: 120))
                .foregroundStyle(.blue.opacity(0.10))
                .offset(x: -100, y: 300)

            VStack(spacing: 20)
            {
                Text("Student Grade Calculator")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundStyle(
                        LinearGradient(colors: [.purple, .pink, .orange, .yellow], startPoint: .leading, endPoint: .trailing)
                    )

                HStack {
                    TextField("Enter Maths Marks 0-100", text: $maths)
                        .padding()
                        .keyboardType(.numberPad)
                    Image(systemName: "ruler")
                        .foregroundStyle(.gray)
                        .padding()
                }.frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                    .shadow(radius: 15)

                HStack {
                    TextField("Enter Physics Marks 0-100", text: $physics)
                        .padding()
                        .keyboardType(.numberPad)
                    Image(systemName: "atom")
                        .foregroundStyle(.gray)
                        .padding()
                }.frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                    .shadow(radius: 15)

                HStack {
                    TextField("Enter Chemistry Marks 0-100", text: $chemistry)
                        .padding()
                        .keyboardType(.numberPad)
                    Image(systemName: "flask")
                        .foregroundStyle(.gray)
                        .padding()
                }.frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                    .shadow(radius: 15)

                Button
                {
                    let m = Double(maths) ?? 0.0
                    let p = Double(physics) ?? 0.0
                    let c = Double(chemistry) ?? 0.0

                    totalMarks = m + p + c
                    percentage = (totalMarks / 300) * 100

                    if percentage >= 90
                    {
                        grade = "A+"
                    } else if percentage >= 70
                    {
                        grade = "B"
                    } else if percentage >= 60
                    {
                        grade = "C"
                    } else if percentage >= 50
                    {
                        grade = "D"
                    } else {
                        grade = "FAIL"
                    }
                } label: {
                    Text("Calculate")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .frame(width: 300, height: 60)
                        .background(.black)
                        .cornerRadius(15)
                }

                Text("Total Marks: \(totalMarks, specifier: "%.2f")/300")
                    .fontWeight(.bold)
                Text("Percentage: \(percentage, specifier: "%.2f")%")
                    .fontWeight(.bold)
                Text("Grade: \(grade)")
                    .fontWeight(.bold)
            }
            .frame(width: 380, height: 600)
            .background(.gray.opacity(0.50))
            .cornerRadius(20)
        }
    }
}

#Preview {
    ContentView()
}
