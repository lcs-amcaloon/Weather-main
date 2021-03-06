//
//  WeatherPredictionGenerator.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation
import SwiftUI

struct WeatherPredictionGenerator {
        
    
    // Create an array of possible temperature ranges
    static private let temperatureRanges: [CelsiusTemperatureRange] = [
        
        CelsiusTemperatureRange(feel: "Record-breaking cold",
                                bounds: -100.0 ... -80.0),
        CelsiusTemperatureRange(feel: "Unbelievably cold",
                                bounds: -80.0 ... -60.0),
        CelsiusTemperatureRange(feel: "Incredibly cold",
                                bounds: -60.0 ... -40.0),
        CelsiusTemperatureRange(feel: "Antarctic-level cold",
                                bounds: -40.0 ... -20.0),
        CelsiusTemperatureRange(feel: "Wear a parka cold",
                                bounds: -20.0 ... -10.0),
        CelsiusTemperatureRange(feel: "Bundle up cold",
                                bounds: -10.0 ... -5.0),
        CelsiusTemperatureRange(feel: "Freezing",
                                bounds: -5.0 ... 0.0),
        CelsiusTemperatureRange(feel: "Cold",
                                bounds: 0.0 ... 5.0),
        CelsiusTemperatureRange(feel: "Chilly",
                                bounds: 5.0 ... 10.0),
        CelsiusTemperatureRange(feel: "Moderately warm",
                                bounds: 10.0 ... 15.0),
        CelsiusTemperatureRange(feel: "Canadian shorts weather",
                                bounds: 15.0 ... 20.0),
        CelsiusTemperatureRange(feel: "Nice",
                                bounds: 20.0 ... 25.0),
        CelsiusTemperatureRange(feel: "Warm",
                                bounds: 25.0 ... 30.0),
        CelsiusTemperatureRange(feel: "Steamy",
                                bounds: 30.0 ... 35.0),
        CelsiusTemperatureRange(feel: "Uncomfortable",
                                bounds: 35.0 ... 40.0),
        CelsiusTemperatureRange(feel: "Record-breaking heat",
                                bounds: 40.0 ... 55.0),
        
    ]
    
    // Create an array of possible weather conditions
    static private let weatherConditions: [WeatherCondition] = [
        WeatherCondition(description: "Sunny/Clear", descriptionImage:  "sun.max"),
        WeatherCondition(description: "Partially cloudy",descriptionImage: "cloud.sun"),
        WeatherCondition(description: "Cloudy", descriptionImage: "cloud"),
        WeatherCondition(description: "Overcast", descriptionImage: "cloud.fill"),
        WeatherCondition(description: "Rain", descriptionImage: "cloud.rain"),
        WeatherCondition(description: "Drizzle", descriptionImage: "cloud.drizzle"),
        WeatherCondition(description: "Snow", descriptionImage: "cloud.snow"),
        WeatherCondition(description: "Stormy", descriptionImage: "cloud.heavyrain"),
        WeatherCondition(description: "Tornadoes", descriptionImage: "tornado"),
        WeatherCondition(description: "Thundersnows", descriptionImage: "cloud.bolt.rain"),
        WeatherCondition(description: "Fog", descriptionImage: "cloud.fog"),
        WeatherCondition(description: "Hurricanes", descriptionImage: "hurricane"),
        WeatherCondition(description: "Sandstorms", descriptionImage: "wind"),
    ]
    
    // Provides a random weather prediction
    static func getPrediction() -> Prediction {
        
        // Get a possible temperature range
        let temperatureRange = temperatureRanges.randomElement()!
        
        // Now get an exact temperature from that range
        let temperature = Double.random(in: temperatureRange.bounds)
        let feel = temperatureRange.feel

        // Get a weather condition
        let condition = weatherConditions.randomElement()!
        
        // Make the prediction
        let prediction = Prediction(temperature: temperature,
                                    feel: feel,
                                    condition: condition)
        
        // Return the weather prediction
        return prediction
        
        // TODO: Implement more appropriate logic above so that the same prediction is not always returned
        
        
    }
    
}
