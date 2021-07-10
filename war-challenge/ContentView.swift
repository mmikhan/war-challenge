//
//  ContentView.swift
//  war-challenge
//
//  Created by Md Mazedul Islam Khan on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard:String = "card5";
    @State private var cpuCard:String = "card9";
    @State private var playerScore:Int = 0;
    @State private var cpuScore:Int = 0;
    
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            
            VStack {
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button.init(action: {
                    let playerCardRandom = Int.random(in: 2...14);
                    let cpuCardRandom = Int.random(in: 2...14);
                    
                    playerCard = "card" + String(playerCardRandom);
                    cpuCard = "card" + String(cpuCardRandom);
                    
                    if (playerCardRandom > cpuCardRandom) {
                        playerScore += 1;
                    } else if (cpuCardRandom > playerCardRandom) {
                        cpuScore += 1;
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom, 10)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom, 10)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
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
    }
}
