//
//  ContentView.swift
//  iOS
//
//  Created by Angus McAloon on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var Prediction = WeatherPredictionGenerator.getPrediction()
    
    var body: some View {
        Text("Current conditions are \(Prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [Prediction.temperature])) °C.")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
