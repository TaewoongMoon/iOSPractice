//
//  ContentView.swift
//  CWC_Lesson4
//
//  Created by 문태웅 on 2021/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("london").resizable().frame(width: 300, height: 300).cornerRadius(10)
                VStack{
                    Text("CN Tower").foregroundColor(.white).padding([.top, .leading, .trailing])
                    Text("Toronto").font(.footnote).foregroundColor(.white).padding([.top, .leading, .trailing])
                }.padding().background(Color.black).cornerRadius(10).opacity(0.8)
            }
            Spacer()
            ZStack{
                Image("toronto").resizable().frame(width: 300, height: 300).cornerRadius(10)
                VStack{
                    Text("Big Ben").foregroundColor(.white)
                    Text("London").font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                }.padding().background(Color.black).cornerRadius(10).opacity(0.8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
