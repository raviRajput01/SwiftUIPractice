//
//  TeamsModel.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import Foundation

struct Teams: Decodable {
    let id: Int
    let name: String
    let winners: String
    let icon: String
}
