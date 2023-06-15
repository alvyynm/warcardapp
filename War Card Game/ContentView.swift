//
//  ContentView.swift
//  War Card Game
//
//  Created by Alvin Wanjala on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card2"
    var computerCard = "card3"
    
    var playerScore = 0
    var computerScore = 0
    
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
        print("Deal cards!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
