//
//  ContentView.swift
//  Sparkler
//
//  Created by Eric Freitas on 4/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView()
                .padding(EdgeInsets(top: 100, leading: 20, bottom: 100, trailing: 20    ))
        }
        .padding()
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

