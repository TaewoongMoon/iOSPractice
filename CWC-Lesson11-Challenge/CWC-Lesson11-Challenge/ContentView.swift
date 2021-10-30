//
//  ContentView.swift
//  CWC-Lesson11-Challenge
//
//  Created by 문태웅 on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    @State private var number : Int = 0
    @State private var increase : Int = 2
    var body: some View {
        VStack{
            Text(String(number))
            HStack{
                Button("Increase") {
                    number += increase
                }
                Button("Decrease") {
                    number *= increase
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
