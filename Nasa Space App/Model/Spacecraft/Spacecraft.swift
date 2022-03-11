//
//  Spacecraft.swift
//  Nasa Space App
//
//  Created by user209843 on 3/5/22.
//

import Foundation
import UIKit

//Spacecraft Struct
struct Spacecraft: Codable {
    let logo: String
    let rocket: String
    let Crew: Int
    let passengers: Int
    let launch: String
    let details: String
    let first_stage: String
    let second_stage: Int
    let youtube: String
    let reddit: String
    let sneakpeak: [String]
}



