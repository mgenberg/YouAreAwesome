//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var displayMessage = "Namaste"
    @State private var volume = 0.0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: "speaker.wave.3", variableValue: volume)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.513, saturation: 0.266, brightness: 0.905))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 30, x: 15, y: 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
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
            
            HStack {
                Button("Off"){
                    volume = 0.0
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Low"){
                    volume = 0.1
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Med"){
                    volume = 0.4
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("High"){
                    volume = 0.7
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
