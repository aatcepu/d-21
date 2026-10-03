import SwiftUI

struct htmlorg: View {
    var body: some View {
        List {
            Section("Unit 1 - HTML Basics") {
                Text("1.1 Introduction to HTML")
                Text("1.2 Tags, Elements and Attributes")
                Text("1.3 Headings, Paragraphs and Links")
                Text("1.4 Images and Lists")
            }
            Section("Unit 2 - Structure and Forms") {
                Text("2.1 Tables")
                Text("2.2 Forms and Input Types")
                Text("2.3 Semantic HTML")
            }
        }
        .navigationTitle("HTML Programming")
    }
}

#Preview {
    NavigationStack {
        htmlorg()
    }
}

