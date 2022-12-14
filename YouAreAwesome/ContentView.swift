//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Matt Genberg on 10/13/22.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var displayMessage = ""
    @State private var lastDisplayNumber = -1
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    
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
                var soundNumber: Int
                
                repeat {
                    displayNumber = Int.random(in: 0...messages.count-1)
                } while displayNumber == lastDisplayNumber
                displayMessage = messages[displayNumber]
                lastDisplayNumber = displayNumber
                
                repeat {
                    imageNumber = Int.random(in: 0...5)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                repeat {
                    soundNumber = Int.random(in: 0...5)
                } while soundNumber == lastSoundNumber
                let soundName = "sound\(soundNumber)"
                lastSoundNumber = soundNumber
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("???? Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("???? ERROR: \(error.localizedDescription) creating audioPlayer.")
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
