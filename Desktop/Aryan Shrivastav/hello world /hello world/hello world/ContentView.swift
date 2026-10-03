//
//  ContentView.swift
//  hello world
//
//  Created by Student on 03/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPressed = false
    var body: some View {
        VStack {
            
            Text("Voice Notes")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .fontDesign(.serif)
                .padding(.top,120)
                
            Spacer()
            
            Button{
                
            }label: {
                Image(systemName: "mic.fill")
                    .font(.system(size: 35))
                    .foregroundStyle(isPressed ? .white : .blue)
                    .frame(width: 100, height: 100)
                    .background(isPressed ? .blue: .white)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke((isPressed ? .white : .blue), lineWidth: 3)
                    )
                    

            }
            
            .onLongPressGesture(minimumDuration: 0, pressing: {
                isPressing in
                if( isPressing){
                   
                    isPressed = true
                }else{
                   
                    isPressed = false
                }
            },perform: {})
        }
        .padding(.top,100)
        .padding(.bottom,130)
        .buttonStyle(.plain)
    }
}

#Preview {
    ContentView()
}
