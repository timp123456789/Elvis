//
//  ContentView.swift
//  Elvis
//
//  Created by Timothy Petrik on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var image = ""
    @State private var message = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            
            
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    image = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    image = "heart"
                    message = "Love"
                }
                Button("Understaing") {
                    image = "lightbulb"
                    message = "Understanding"
                }
            }
            .font(.title2)
            .tint(.purple)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
