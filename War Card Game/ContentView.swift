//
//  ContentView.swift
//  War Card Game
//
//  Created by Alvin Wanjala on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var computerCard = "card3"
    
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    
                    deal()
                        
                } label: {
                    Image("button")

                }
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack{
                        Text("Computer").font(.headline).padding(.bottom, 10.0)
                        
                        Text(String(computerScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
            
        }
        
        
    }
    
    func deal() {
        // Randomize cards
        var playerCardNumber = Int.random(in: 2...14)
        var computerCardNumber = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardNumber)
        
        computerCard = "card" + String(computerCardNumber)
        
        // Update the scores
        
        if playerCardNumber > computerCardNumber {
            // Increment player score
            playerScore += 1
        } else if computerCardNumber > playerCardNumber {
            // Increment computer score
            computerScore += 1
        } else {
            // Tie
            playerScore += 0
            computerScore += 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
