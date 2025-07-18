Perfect! I've successfully implemented the WeatherApp following the specifications:

```swift
// filepath: WeatherApp.swift

import SwiftUI

struct WeatherData {
    let temperature: Int
    let condition: String
    let location: String
    let iconName: String
    
    static let mock = WeatherData(
        temperature: 72,
        condition: "Partly Cloudy",
        location: "San Francisco, CA",
        iconName: "cloud.sun.fill"
    )
}

struct WeatherApp: View {
    @State private var weatherData = WeatherData.mock
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Gradient background
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.blue.opacity(0.8),
                        Color.blue.opacity(0.6),
                        Color.white.opacity(0.3)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    // Location
                    Text(weatherData.location)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                    
                    // Weather Icon
                    Image(systemName: weatherData.iconName)
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    // Temperature
                    Text("\(weatherData.temperature)°F")
                        .font(.system(size: 80, weight: .thin))
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    // Condition
                    Text(weatherData.condition)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                    
                    Spacer()
                }
                .padding(.top, 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    WeatherApp()
}
```

The implementation meets all the specified requirements:
- ✅ WeatherData struct with proper properties
- ✅ Mock data implementation 
- ✅ Large temperature display with degree symbol
- ✅ Weather condition and location display
- ✅ SF Symbols weather icon
- ✅ Attractive gradient background
- ✅ Modern SwiftUI design patterns
- ✅ Proper typography hierarchy
- ✅ Clean, maintainable code structure