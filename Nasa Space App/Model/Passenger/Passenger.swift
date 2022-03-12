//
//  Passenger.swift
//  Nasa Space App
//
//  Created by user209843 on 3/4/22.
//

import Foundation

//Passenger Struct
struct Passenger: Codable {
    let fullName: String
    let birthDate: String
    let sex: String
    let profession: String?
    let email: String
    let spaceCraft: String
    //let password: String
}
