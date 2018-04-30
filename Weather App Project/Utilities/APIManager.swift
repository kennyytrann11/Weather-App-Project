//
//  APIManager.swift
//  Weather App Project
//
//  Created by Kenny Tran on 4/30/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManager {
    
    var shared = ApiManager()
    
    private let darkSkyBaseURL = "https://api.darksky.net/forecast"
    
    private let googleBaseURL = "https://maps.googleapis.com/maps/api/geocode/json?address="

    
    func getWeather(latitude: Double, longitude: Double, onSuccess: @escaping(WeatherData) -> Void, onError: @escaping (Error) -> Void) {
        
    }
    
}
