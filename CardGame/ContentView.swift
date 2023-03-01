//
//  ContentView.swift
//  CardGame
//
//  Created by Ali Can Kayaaslan on 27.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-cloth")
            VStack{
                Image("logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("CARD GAME!")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
