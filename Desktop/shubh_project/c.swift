import SwiftUI

struct corg: View {
    var body: some View {
        List {
            Section("Unit 1 - C Basics") {
                Text("1.1 Introduction to C programming")
                Text("1.2 Variables and Data Types")
                Text("1.3 Operators and Control Flow")
                Text("1.4 Functions")
            }
            Section("Unit 2 - Advanced C") {
                Text("2.1 Arrays and Strings")
                Text("2.2 Pointers")
                Text("2.3 Structures and File Handling")
            }
        }
        .navigationTitle("C Programming")
    }
}

#Preview {
    NavigationStack {
        corg()
    }
}
