//
//  ContentView.swift
//  CWC-Lesson10-Challenge
//
//  Created by 문태웅 on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Button("Click Me") {
                print("Print Something Please")
            }
            Button(action: {
                print("Yes")
            }, label: {
                HStack{
                    Image(systemName: "play.fill")
                    Text("Play.fill")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
