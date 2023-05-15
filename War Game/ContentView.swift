//
//  ContentView.swift
//  War Game
//
//  Created by Bryan Gwin on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    else {
                        print("WAR!!!")
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
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
