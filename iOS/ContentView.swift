//
//  ContentView.swift
//  iOS
//
//  Created by Angus McAloon on 2021-09-30.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel = WeatherViewModel()
    @State var conditionDescription = ""
    @State var temperature = 0.0
    
    var body: some View {

//        var prediction = viewModel.getPrediction()
        
        Text("Current conditions are \(conditionDescription.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [temperature])) °C.")
            .padding()
        
        Button(action: {
            let prediction = viewModel.getPrediction()
            conditionDescription = prediction.condition.description
            temperature = prediction.temperature
        }, label: {
            
            Text("New Prediction")
            
        })
        
        List(viewModel.predictionHistory) { prediction in
            Text("Conditions were \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        }
    }
    
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: <#WeatherViewModel#>)
//    }
//}
