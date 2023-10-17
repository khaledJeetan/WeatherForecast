
func getStatusIcon(code: Int) -> String{
    
    switch code{
        
    case 0...1: return "☀️"
    case 2: return "🌤️"
    case 3: return "☁️"
    case 40...50: return "🌫️"
    case 51...60: return "💦"
    case 61...70: return "🌧️"
    case 71...79: return "❄️"
    case 80...83: return "🌦️"
    case 85...86: return "🌨️"
    default: return "🌪️"
    }
}

func getBackgroundImage(code: Int) -> String{
    
    switch code{
        
    case 0: return  "0"
    case 1: return "1"
    case 2: return "2"
    case 3: return "3"
    case 40...50: return "🌫️"
    case 51...60: return "💦"
    case 61...70: return "🌧️"
    case 71...79: return "❄️"
    case 80...83: return "🌦️"
    case 85...86: return "🌨️"
    default: return "🌪️"
    }
}
