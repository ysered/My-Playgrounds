//: [Previous](@previous)

import Foundation

struct Celsius : CustomStringConvertible {
    var temperatureInCelsius: Double
    
    var description: String {
        return "\(temperatureInCelsius) C°"
    }
 
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let bodyTemperature = Celsius(37)

print ("Body temperature: \(bodyTemperature)")
//: [Next](@next)
