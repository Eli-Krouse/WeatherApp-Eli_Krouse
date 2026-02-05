//
//  ViewController.swift
//  WeatherApp-Eli_Krouse
//
//  Created by Krouse, William E. on 2/5/26.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var weatherIcon: UIImageView!
    
    
    @IBOutlet weak var weatherNameLabel: UILabel!
    
    
    @IBOutlet weak var tempFLabel: UILabel!
    
    
    @IBOutlet weak var weatherScene: UIImageView!
    
    
    @IBOutlet weak var warningLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let weather = "Snowy" // make this change
        
        let temperature = 15 // this too
        
        switch weather
        {
        case "Snowy":
            weatherIcon.image = UIImage(named: "snow")
            weatherNameLabel.text = weather
            weatherScene.image = UIImage(named: "snowy_House")
            
        case "Rainy":
            weatherIcon.image = UIImage(named: "rainy")
            weatherNameLabel.text = weather
            weatherScene.image = UIImage(named: "rainy_City")
            
        case "Sunny":
            weatherIcon.image = UIImage(named: "sunny")
            weatherNameLabel.text = weather
            weatherScene.image = UIImage(named: "sunny_Cottage")
            
        case "Cloudy":
            weatherIcon.image = UIImage(named: "cloudy")
            weatherNameLabel.text = weather
            weatherScene.image = UIImage(named: "cloudy_Ocean")
            
        default:
            weatherIcon.image = UIImage(named: "night_clear")
            weatherNameLabel.text = weather
            weatherScene.image = UIImage(named: "clear_Night_Scene")
            print("unkown weather")
        }
        
        tempFLabel.text = String(temperature) + "°F"
        
        switch(temperature)
        {
        case ..<20:
            warningLabel.text = "Extreme Cold"
        case 20..<50:
            warningLabel.text = "It's Cold Outside!"
        case 50..<69:
            warningLabel.text = "Cool and Mild"
        case 69..<85:
            warningLabel.text = "Warm!"
        case 85..<900:
            warningLabel.text = "Heat Alert!"
        default:
            warningLabel.text = "?"
            print("error")
        }
        
        
    }


}

