//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = "You Are Great!"
    
    var body: some View {
        VStack {
            Text(displayMessage)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding()
            
            Button("Press Me") {
                displayMessage = "You Are Awesome!"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
