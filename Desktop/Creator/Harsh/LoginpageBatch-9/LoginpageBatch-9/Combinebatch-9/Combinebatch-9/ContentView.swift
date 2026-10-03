//
//  ContentView.swift
//  Combinebatch-9
//
//  Created by Student on 01/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var physic: String = ""
    @State private var maths: String = ""
    @State private var english: String = ""
    @State private var totalMarks: Double = 0.0
    @State private var percentage: Double = 0.0
    @State private var grade: String = ""
    var body: some View {
       
            ZStack {
                
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 120))
                    .foregroundStyle(.blue.opacity(0.08))
                    .offset(x: 130, y: -300)
                
                Image(systemName: "book.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(.purple.opacity(0.08))
                    .offset(x: -130, y: -150)
                
                Image(systemName: "pencil.and.ruler.fill")
                    .font(.system(size: 90))
                    .foregroundStyle(.orange.opacity(0.08))
                    .offset(x: 140, y:50)
                
                Image(systemName: "checkmark.seal.fill")
                    .font(.system(size: 110))
                    .foregroundStyle(.green.opacity(0.08))
                    .offset(x:-140, y:250)
                
                Image(systemName: "doc.text.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(.red.opacity(0.09))
                    .offset(x: 140, y:350)
                
                Text("🤩")
                    .font(.system(size: 80))
                    .offset(x: -90, y:100)
                    .opacity(0.10)
                
                Text("😎")
                    .font(.system(size: 120))
                    .offset(x: -120, y: -330)
                    .opacity(0.09)
                
                VStack (spacing: 20){
                    
                    Text("Student grade calculator")
                        .fontDesign(.rounded)
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .foregroundStyle(LinearGradient(colors: [.red, .blue, .yellow], startPoint: .leading, endPoint: .trailing))
                        .padding()
                    
                    
                    HStack {
                        
                        
                        TextField("Physics marks 0-100", text: $physic)
                            .padding()
                        
                        Image(systemName: "flask")
                            .foregroundColor(.gray)
                            .padding()
                    }.frame(width: 360, height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(15)
                    
                    HStack {
                        TextField("Maths marks 0-100", text: $maths)
                            .padding()
                        
                        Image(systemName: "ruler")
                            .padding()
                    }.frame(width: 360, height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(15)
                    
                    HStack {
                        TextField("English marks 0-100", text: $english)
                            .padding()
                        
                        Image(systemName: "book")
                            .padding()
                    }.frame(width: 360, height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(15)

                    
                    Button{
                        var m = Double(maths) ?? 0.0
                        var p = Double(physic) ?? 0.0
                        var e = Double(english) ?? 0.0
                        
                        totalMarks = m + p + e //Marks total
                        
                        percentage = (totalMarks/300) * 100 //Percentage calculate
                        
                        if percentage >= 90 {
                            grade = "A"
                        }else if percentage >= 80 {
                                grade = "B"
                        }else if percentage >= 70{
                            grade = "C"
                        }else if percentage >= 60 {
                            grade = "D"
                        }else if percentage >= 50 {
                            grade = "E"
                        }else {
                            grade = "F"
                        }
                        maths = ""
                        physic = ""
                        english = ""
                        
                    }label: {
                        
                        Text("Calculate")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 60)
                            .background(LinearGradient(colors: [.red, .purple, .yellow], startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(20)
                            .padding()
                    }
                    Divider()
                    
                    Text("Total Marks\(Int(totalMarks))/300")
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                        
                    Text("Percentage\(percentage, specifier: "%.2f")")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                    
                    Text("Grade: \(grade)")
                        .fontWeight(.semibold)
                        .font(.system(size: 25))
                        .foregroundStyle(.green)
                }
                .padding()
                .background(.white)
                .cornerRadius(50)
                .shadow(radius: 30)
                
            }
        }
    }

#Preview {
    ContentView()
}
