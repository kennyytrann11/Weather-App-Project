//
//  ViewController.swift
//  Weather App Project
//
//  Created by Kenny Tran on 4/26/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherEmoji: UILabel!
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    
    var apiManager = ApiManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiManager.shared.getWeather(latitude: <#T##Double#>, longitude: <#T##Double#>, onSuccess: <#T##(WeatherData) -> Void#>, onError: <#T##(Error) -> Void#>)
        
        
    }



}

