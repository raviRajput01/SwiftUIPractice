//
//  Landmark.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import Foundation


struct Landmark : Decodable {
    let landmarkId: Int
    let name: String
    let photo: String
    let description: String
}

struct City: Decodable {
    
    let cityId: Int
    let name: String
    let landmarks: [Landmark]
}
