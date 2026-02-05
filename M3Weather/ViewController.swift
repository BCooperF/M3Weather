//
//  ViewController.swift
//  M3Weather
//
//  Created by Faesy, Bradley C. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {
	
	
	@IBOutlet weak var weatherImage: UIImageView!
	@IBOutlet weak var statusLabel: UILabel!
	@IBOutlet weak var tempLabel: UILabel!
	@IBOutlet weak var descriptLabel: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let weather = "Snowy"
		let temp = 78
		
		/*if weather == "Sunny" {
			weatherImage.image = UIImage(named: "sun")
		}else if weather == "Rainy" {
			weatherImage.image = UIImage(named: "heavy-rain")
		}else if weather == "Snowy" {
			weatherImage.image = UIImage(named: "snowy")
		}else if weather == "Cloudy" {
			weatherImage.image = UIImage(named: "cloudy")
		}else{
			weatherImage.image = UIImage(named: "meteorology")
		}*/
		
		switch weather {
		case "Sunny":
			weatherImage.image = UIImage(named: "sunny")
		case "Rainy":
			weatherImage.image = UIImage(named: "heavy-rain")
		case "Snowy":
			weatherImage.image = UIImage(named: "snowy")
		case "Cloudy":
			weatherImage.image = UIImage(named: "cloudy")
		default:
			weatherImage.image = UIImage(named: "meteorology")
		}
		
		statusLabel.text = weather
		tempLabel.text = "\(temp)"
		
		if temp <= 19 {
			descriptLabel.text = "Freezing"
		}else if temp >= 20 && temp <= 49 {
			descriptLabel.text = "Chilly"
		}else if temp >= 50 && temp <= 70 {
			descriptLabel.text = "Warm"
		}else if temp >= 71 && temp <= 90 {
			descriptLabel.text = "Hot"
		}else{
			descriptLabel.text = "EXTREME"
		}
	}
}

