//
//  ContentView.swift
//  login page
//
//  Created by Student on 14/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            NavigationStack {
            ScrollView {
                    VStack {
                                              // Corrected Image syntax
                                              Image(.images) // Ensure "images" exists in your Assets.xcassets
                                                  .resizable()
                                                  .scaledToFit()
                                                  .frame(width: 300, height: 300)
                                              Text("we are selling best farm organic vegetables and fruits").font(<#T##font: Font?##Font?#>)
                                          }
                                          .padding()
                                      }
                                      //.navigationTitle("GXN") // Optional: adds a title to your stack
                                  }
                              }
                          }

                          #Preview {
                              ContentView()
                          }


)
                        .resizable()
                        .
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
