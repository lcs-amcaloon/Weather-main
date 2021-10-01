//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation
import SwiftUI

// Make an emppty array of type prediction
//var history: [Prediction] = []
var viewModel = WeatherViewModel()


while true {
    print("Do you want another prediction? Y/N")
    let UserInput = readLine()

    
    switch UserInput {
        
    case "N":
        print("Would you like to view your history? Y/N")
        let UserInput = readLine()
        
        switch UserInput {
        case "Y":
            dump(viewModel)
        case "N":
            break
        case .none:
            break
        case .some(_):
            print("Please input a valid choice")
        }
        
    case "Y":
        let prediction = viewModel.getPrediction()
        
        // Show the prediction
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")

        print("That's \(prediction.feel.lowercased())!")
    case .none:
        break
    case .some(_):
        print("Please input a valid choice")
    }

}
