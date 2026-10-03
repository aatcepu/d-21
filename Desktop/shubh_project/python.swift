import SwiftUI

struct pythonorg: View {
    var body: some View {
        List {
            Section("Unit 1 - Python Basics") {
                Text("1.1 Introduction to Python")
                Text("1.2 Variables and Data Types")
                Text("1.3 Control Flow and Functions")
                Text("1.4 Error Handling")
            }
            Section("Unit 2 - Data Structures and OOP") {
                Text("2.1 Lists, Tuples and Dictionaries")
                Text("2.2 Classes and Objects")
                Text("2.3 Modules and File Handling")
            }
        }
        .navigationTitle("Python Programming")
    }
}

#Preview {
    NavigationStack {
        pythonorg()
    }
}
