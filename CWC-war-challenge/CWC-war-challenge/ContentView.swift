//
//  ContentView.swift
//  CWC-war-challenge
//
//  Created by 문태웅 on 2021/10/28.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
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
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }else if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding()
                        Text(String(playerScore))
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding()
                        Text(String(cpuScore))
                    }.foregroundColor(Color.white)
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
