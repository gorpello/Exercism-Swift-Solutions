class SpaceAge {
    
    let ageInSeconds: Double
    
    init(_ ageInSeconds: Int) {
        self.ageInSeconds = Double(ageInSeconds)
    }
    
    var secondsInYear: Double { 60 * 60 * 24 * 365.25 }
    
    var onEarth: Double {
        ageInSeconds / secondsInYear
    }
    
    var onMercury: Double {
        ageInSeconds / (secondsInYear * 0.2408467)
    }
    
    var onVenus: Double {
        ageInSeconds / (secondsInYear * 0.61519726)
    }
    
    var onMars: Double {
        ageInSeconds / (secondsInYear * 1.8808158)
    }
    
    var onJupiter: Double {
        ageInSeconds / (secondsInYear * 11.862615)
    }
    
    var onSaturn: Double {
        ageInSeconds / (secondsInYear * 29.447498)
    }
    
    var onUranus: Double {
        ageInSeconds / (secondsInYear * 84.016846)
    }
    
    var onNeptune: Double {
        ageInSeconds / (secondsInYear * 164.79132)
    }
    
}
