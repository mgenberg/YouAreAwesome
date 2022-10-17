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
            Spacer()
            
            Text(displayMessage)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                if displayMessage == message1 {
                    displayMessage = message2
                }
                else {
                    displayMessage = message1
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
