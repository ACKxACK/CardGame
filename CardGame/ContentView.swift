//
//  ContentView.swift
//  CardGame
//
//  Created by Ali Can Kayaaslan on 27.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack{
                Image("logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 50)
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Button {
                    deal()
                } label: {
                    Image("button")
                        .padding(30)
                }

                HStack {
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                }
            }
            
        }
        .padding()
    }
    
    func deal() {
        //Randomize the player cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        //Randomize the cpu cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        //Update the    score
        
        if playerCardValue > cpuCardValue {
            //Add 1 score to playerScore
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        } else {
            print("Draw")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
