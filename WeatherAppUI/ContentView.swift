//
//  ContentView.swift
//  WeatherAppUI
//
//  Created by Ilya Kokorin on 18.07.2022.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)



struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "sun.max")
                Text("Searching for \(searchText)")
                                .searchable(text: $searchText, prompt: "Look for something")
                                .navigationTitle("Searchable Example")
            }
            Text("dfsdf")
        }
        .background(backgroundGradient)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
