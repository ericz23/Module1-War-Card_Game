//
//  ContentView.swift
//  WarChallengeUI
//
//  Created by Eric Zhu on 7/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card14"
    @State private var CPUCard = "card14"
    @State private var playerScore = 0
    @State private var CPUScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background").resizable().aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(CPUCard)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button (action: {
                    //update cards
                    var playerRand = Int.random(in: 2...14)
                    var CPURand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    CPUCard = "card" + String(CPURand)
                    
                    //update scores
                    
                    if playerRand > CPURand {
                        playerScore += 1
                    }
                    else if CPURand > playerRand{
                        CPUScore += 1
                    }
                    
                },
                        label: {
                    Image("dealbutton")
                })

                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Player")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 5.0)
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(0.0)
                        
                        Text(String(CPUScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 5.0)
                        
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
