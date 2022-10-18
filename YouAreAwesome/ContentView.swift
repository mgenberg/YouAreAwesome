//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = ""
    @State private var lastDisplayNumber = -1
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    
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
                var displayNumber: Int
                var imageNumber: Int
                
                repeat {
                    displayNumber = Int.random(in: 0...messages.count-1)
                } while displayNumber == lastDisplayNumber
                lastDisplayNumber = displayNumber
                
                repeat {
                    imageNumber = Int.random(in: 0...5)
                } while imageNumber == lastImageNumber
                lastImageNumber = imageNumber
                
                displayMessage = messages[displayNumber]
                imageName = "image\(imageNumber)"
                

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
