//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = ""
    
    var body: some View {
        VStack {
            Text(displayMessage)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding()
            
            HStack {
                Button("Awesome"){
                    displayMessage = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great"){
                    displayMessage = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
