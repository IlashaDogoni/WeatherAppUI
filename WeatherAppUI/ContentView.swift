//
//  ContentView.swift
//  WeatherAppUI
//
//  Created by Ilya Kokorin on 18.07.2022.
//

import SwiftUI

let backgroundGradient = LinearGradient(gradient: Gradient(colors: [.blue, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)



struct ContentView: View {
    @State private var searchText = ""
    var weatherManager = WeatherManager()
   // var locationManager = CLLocationManager()
    
    var body: some View {
        ZStack{
            
        VStack{
            HStack{
                Spacer()
                   
                Button ( action: weatherManager.testFetching)
                {Image(systemName: "location.circle.fill")
                        .padding()
                        .foregroundColor(.black)
                }
                                
                Text("Searching for \(searchText)")
                                .searchable(text: $searchText, prompt: "Look for something")
                                .navigationTitle("Searchable Example")
                                
                Button ( action: weatherManager.testFetching)
                {Image(systemName: "magnifyingglass")
                        .padding()
                        .foregroundColor(.black)
                }
                Spacer()
                
            }
            Spacer()
            VStack {
                
                Image(systemName: "sun.max")
            
            HStack {
                Text("21")
                Text("°C")
            }
            Text("London")
        }
            Spacer()
        }
    }
        
        .background(backgroundGradient)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
