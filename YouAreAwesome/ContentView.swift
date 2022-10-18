//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = ""
    @State private var displayNumber = 0
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
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
                let messages = ["Poggers!",
                                "Rock On!",
                                "Oh Yeah!",
                                "Yeet!",
                                "Swag!"]
                
                displayMessage = messages[displayNumber]
                imageName = "image\(imageNumber)"
                
                displayNumber += 1
                if displayNumber == messages.count {
                    displayNumber = 0
                }
                
                imageNumber += 1
                if imageNumber > 5 {
                    imageNumber = 0
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
