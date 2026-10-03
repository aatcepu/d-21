import SwiftUI

struct javaorg: View {
    var body: some View {
        List {
            Section("Unit 1 - Java Fundamentals") {
                Text("1.1 Introduction to Java and JVM")
                Text("1.2 Variables and Data Types")
                Text("1.3 Operators and Control Flow")
                Text("1.4 Methods and Arrays")
            }
            Section("Unit 2 - Object Oriented Programming") {
                Text("2.1 Classes and Objects")
                Text("2.2 Inheritance and Polymorphism")
                Text("2.3 Exception Handling")
            }
        }
        .navigationTitle("Java Programming")
    }
}

#Preview {
    NavigationStack {
        javaorg()
    }
}
