import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...501:
            return "cloud.rain"
        case 502...531:
            return "cloud.heavyrain"
        case 600...622:
            return "snow"
        case 701...762:
            return "cloud.fog"
        case 771:
            return "wind"
        case 781:
            return "tornado"
        case 801...804:
            return "cloud"
        default:
            return "sun.max"
        }
    }

}
