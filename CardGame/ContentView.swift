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
            Image("background-plain")
                .ignoresSafeArea()
            VStack{
                Image("logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 50)
                HStack {
                    Spacer()
                    Image("back")
                    Spacer()
                    Image("back")
                    Spacer()
                }
                Button {
                    //TO DO
                } label: {
                    Image("button")
                        .padding(30)
                }

                HStack {
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                    }.foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("0")
                            .font(.largeTitle)
                    }.foregroundColor(.white)
                        .font(.system(size: 20))
                    Spacer()
                }
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
