//
//  ContentView.swift
//  CWC-Lesson12-Challenge(Last)
//
//  Created by 문태웅 on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    @State private var number : Int = 0
    @State private var shouldDecrease : Bool = false
    func increase(){
        let numRand = Int.random(in: 1...10)
        number += numRand
    }
    
    func decrease(){
        let numRand = Int.random(in: 1...10)
        number -= numRand
    }
    
    var body: some View {
        VStack{
            Text(String(number))
            Button(action: {
                shouldDecrease ? decrease() : increase()
                if(number > 50){
                    shouldDecrease = true
                }else if(number < 0){
                    shouldDecrease = false
                }
            }, label: {
                Text("Click Me")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
