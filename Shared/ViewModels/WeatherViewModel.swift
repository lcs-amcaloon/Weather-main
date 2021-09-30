//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var predictionHistory: [Prediction] = []
    
    func getPrediction() -> String {
        var currentWeather = Prediction
        currentWeather.response = WeatherPredictionGenerator.getPrediction()
        
        Prediction.append(currentWeather)
        
        return currentWeather.response
    }
}
