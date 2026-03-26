//
//  ViewController.swift
//  M3Weather
//
//  Created by Faesy, Bradley C. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var weatherImageView: UIImageView!
	@IBOutlet weak var statusLabel: UILabel!
	@IBOutlet weak var temperatureLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let weather = [Weather.sunny, .cloudy, .rainy, .snowy].randomElement() ?? .sunny
		let temperature = Int.random(in: 0 ... 100)
		
		weatherImageView.image = weather.image
		statusLabel.text = weather.rawValue
		temperatureLabel.text = "\(temperature)"
		descriptionLabel.text = weather.getTemp(matching: temperature)
	}
}
