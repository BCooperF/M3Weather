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
	
	func getWeatherImage (matching weather: String) -> UIImage? {
		switch weather{
		case "Sunny":
			return UIImage(named:"sunny")
		case "Cloudy":
			return UIImage(named:"cloudy")
		case "Rainy":
			return UIImage(named:"rainy")
		case "Snowy":
			return UIImage(named:"snowy")
		default:
			return UIImage(named:"weather")		}
	}
	
	func getTemp (matching temp: Int) -> String{
		switch temp{
		case 0..<20:
			return "Extream cold"
		case 20..<50:
			return "It's cold outside"
		case 50..<69:
			return "Cool and mild"
		case 69..<86:
			return "Warm!"
		default:
			return "Heat alert!"
		}
	}
	
	/*
	 func currencySymbol(for: country: String?) -> String?{
		switch country{
		case "US":
			return "$"
		case "DE":
			return "E"
		case "KR":
			return "W"
		case "JP":
			return "Y"
		default:
			nil
		}
	}
	 
	 if let cs = currencySymbol(for: "US"){
		print(cs)
	 }else{
		print("Not Found")
	 }
	 
	--------------
	let input: String? = "42.5"
	 
	 let fu = Double(input!)!
	 print(fu) //Forced Unwrap
	 
	 if let input, let ob = Double(input){
		print(ob) //Optional Binding
	 }else{
		print("Invalid")
	 }
	 
	 let nc = Double(input ?? "0") ?? 0.0
	 print(nc) //Nil-Coalescing
	 --------------
	 let nickname: String? = "SwiftCoder"
	 
	 let fu = Double(input!)!
	 print(fu) //Forced Unwrap
	 
	 if let input, let ob = Double(input){
		print(ob) //Optional Binding
	 }else{
		print("Invalid")
	 }
	 
	 let nc = Double(input ?? "0") ?? 0.0
	 print(nc) //Nil-Coalescing
	*/
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let weather = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Sunny"
		let temperature = Int.random(in: 0 ... 100)
		
		weatherImageView.image = getWeatherImage(matching: weather)
		statusLabel.text = weather
		temperatureLabel.text = "\(temperature)"
		descriptionLabel.text = getTemp(matching: temperature)
	}
}
