//
//  ContentView.swift
//  iOS L4p2
//
//  Created by Luke Goh on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("\(count)").bold()
                HStack {
                    Button(action: {
                        count -= 1
                    }) {
                        Image(systemName: "minus.circle")
                            .imageScale(.large)
                            .foregroundColor(Color.yellow)
                    }
                    
                    Button(action: {
                        count += 1
                    }) {
                        Image(systemName: "plus.circle")
                            .imageScale(.large)
                            .foregroundColor(Color.yellow)
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
