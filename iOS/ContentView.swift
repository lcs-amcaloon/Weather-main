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
    @State var conditionImage = ""
    
    var body: some View {

//        var prediction = viewModel.getPrediction()
        HStack{
            Image(systemName: conditionImage)
            VStack {
                Text(conditionDescription)
                Text("\(String(format: "%.1f", arguments: [temperature])) °C.")
            }
        }
        
        Button(action: {
            let prediction = viewModel.getPrediction()
            
            conditionDescription = prediction.condition.description
            temperature = prediction.temperature
            conditionImage = prediction.condition.descriptionImage
        }, label: {
            
            Text("New Prediction")
            
        })
        
        List(viewModel.predictionHistory) { prediction in
                VStack {
                    Text(prediction.condition.description.lowercased())
                    Text("\(String(format: "%.1f", arguments: [prediction.temperature])) °C")
                }
        }
    }
    
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: <#WeatherViewModel#>)
//    }
//}
