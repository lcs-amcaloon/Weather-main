//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

// Make an emppty array of type prediction
var history: [Prediction] = []

// Generate a weather prediction
let prediction = WeatherPredictionGenerator.getPrediction()

// Add the prediction to the array
history.append(prediction)

// What's in the array now?
dump(history)

// Show the prediction
print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")

print("That's \(prediction.feel.lowercased())!")
