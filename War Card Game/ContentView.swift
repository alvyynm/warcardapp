//
//  ContentView.swift
//  War Card Game
//
//  Created by Alvin Wanjala on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                
                Button {
                        
                } label: {
                    Image("button")

                }
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom, 5.0)
                        Text("0").font(.title2)
                    }
                    Spacer()
                    
                    VStack{
                        Text("Computer").padding(.bottom, 5.0)
                        
                        Text("0").font(.title2)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
