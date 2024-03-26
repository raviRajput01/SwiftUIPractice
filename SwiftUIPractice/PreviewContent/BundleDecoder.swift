//
//  BundleDecoder.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import Foundation

struct BundleDecoder {
    
    static func decodeLandMarkBundleJson() -> [City] {
        let landmarkJson = Bundle.main.path(forResource: "landmark", ofType: "json")
        let landmark = try! Data(contentsOf: URL(fileURLWithPath: landmarkJson!), options: .alwaysMapped)
        return try! JSONDecoder().decode([City].self, from: landmark)
        
    }
    
    static func decodeIPLTeamsBundleJson() -> [Teams] {
        let iplTeamJson = Bundle.main.path(forResource: "iplTeams", ofType: "json")
        let teamsData = try! Data(contentsOf: URL(fileURLWithPath: iplTeamJson!), options: .alwaysMapped)
        return try! JSONDecoder().decode([Teams].self, from: teamsData)
    }
}
