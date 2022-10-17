//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.blue, .purple, .red])
                )
                .ignoresSafeArea()
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("Vermillion"))
                    .padding()
                    .background(Color("LightBlue"))
                    .cornerRadius(15)
                
                Spacer()
                
                Text(displayMessage)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
                HStack {
                    Button("Awesome"){
                        displayMessage = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button("Great"){
                        displayMessage = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
