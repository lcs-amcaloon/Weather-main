//
//  ContentView.swift
//  iOS
//
//  Created by Angus McAloon on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel = WeatherViewModel()
    
    var body: some View {
        let prediction = viewModel.getPrediction()
        Text("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
            .padding()
        List(viewModel.predictionHistory) { prediction in
            Text("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
