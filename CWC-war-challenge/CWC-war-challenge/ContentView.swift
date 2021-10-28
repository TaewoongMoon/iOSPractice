//
//  ContentView.swift
//  CWC-war-challenge
//
//  Created by 문태웅 on 2021/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding()
                        Text("0")
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding()
                        Text("0")
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
