//
//  ContentView.swift
//  CWC14DayBeginnerChallenge
//
//  Created by 문태웅 on 2021/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        VStack {
        Image("logo")
            .resizable().aspectRatio(contentMode: .fit)
        Text("Hello World!")
            .foregroundColor(.white).padding().background(Color.green).cornerRadius(10).padding().background(Color.blue)
    }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
