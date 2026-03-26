//
//  Weather.swift
//  M3Weather
//
//  Created by Faesy, Bradley C. on 3/26/26.
//

import UIKit

enum Weather: String {
	case sunny = "Sunny"
	case cloudy = "Cloudy"
	case rainy = "rainy"
	case snowy = "Snowy"
	
	var image: UIImage? {
		switch self {
		case .sunny:
			return UIImage(named:"sunny")
		case .cloudy:
			return UIImage(named:"cloudy")
		case .rainy:
			return UIImage(named:"rainy")
		case .snowy:
			return UIImage(named:"snowy")
		}
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
}
