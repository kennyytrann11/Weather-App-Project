//
//  WeatherData.swift
//  Weather App Project
//
//  Created by Kenny Tran on 5/1/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class WeatherData {
    var weatherSymbol: String
    var currentTemp: Int
    var highTemp: Int
    var lowTemp: Int
    
    //clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, partly-cloudy-night
    
    
    init (json: JSON) {
        self.currentTemp = Int(json["currently"]["temperature"].doubleValue)
        self.highTemp = Int(json["daily"]["data"][0]["temperatureHigh"].doubleValue)
        self.lowTemp = Int(json["daily"]["data"][0]["temperatureLow"].doubleValue)

        var weatherIcon = json["currently"]["icon"].stringValue
        
        switch weatherIcon {
        case "clear-day":
            self.weatherSymbol = "☀️"
        case "clear-night":
            self.weatherSymbol = "🌕"
        case "rain":
            self.weatherSymbol = "🌨"
        case "snow":
            self.weatherSymbol = "❄️"
        case "sleet":
            self.weatherSymbol = "🌨"
        case "wind":
            self.weatherSymbol = "💨"
        case "fog":
            self.weatherSymbol = "🌫"
        case "cloudy":
            self.weatherSymbol = "☁️"
        case "partly-cloudy-day":
            self.weatherSymbol = "🌤"
        case "partly-cloudy-night":
            self.weatherSymbol = "⛅️"
        default:
            self.weatherSymbol = "❌"
        }
    }
    
}

