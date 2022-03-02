//
//  Star.swift
//  Nasa Space App
//
//  Created by user209843 on 3/1/22.
//

import Foundation

struct Star {
    let starName: String
    let galaxyName: String
    let mass: String
    let size: String
    let luminosity: String
}

var stars: [Star] = [
    Star(starName:  "Sol", galaxyName: "Via Lactea", mass: "1.989E30 kg", size: "696340 km", luminosity: "1 L"),
    Star(starName:  "Sol 2", galaxyName: "Andromeda", mass: "2.349E50 kg", size: "657584 km", luminosity: "3 L"),
    Star(starName:  "Sol 3", galaxyName: "Andromeda 2", mass: "5.364E65 kg", size: "546578 km", luminosity: "6 L"),
    Star(starName:  "Sol 4", galaxyName: "Andromeda 3", mass: "7.124E32 kg", size: "096754 km", luminosity: "4 L"),
    Star(starName:  "Sol 5", galaxyName: "Andromeda 4", mass: "3.980E65 kg", size: "124356 km", luminosity: "7 L"),
    Star(starName:  "Sol 6", galaxyName: "Andromeda 5", mass: "8.005E77 kg", size: "458294 km", luminosity: "2 L"),
    Star(starName:  "Sol 7", galaxyName: "Andromeda 6", mass: "6.445E12 kg", size: "116385 km", luminosity: "5 L"),
]
