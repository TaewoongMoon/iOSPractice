//
//  ContentView.swift
//  button-example
//
//  Created by 문태웅 on 2021/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Click Me", action: {
            print("Hello World")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
