//
//  HomeView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import SwiftUI

struct HomeView: View {
   // @State private var planetList: [String] = ["Mercury","Venus","Earth","Mars","Jupiter","Saturn","Urnaus","Neptune","Pluto"]
    let cities = BundleDecoder.decodeLandMarkBundleJson()
    var body: some View {
        NavigationView {
            List {
                ForEach(cities, id: \.cityId) { city in
                    Section(header: Text(city.name))
                    {
                        ForEach(city.landmarks, id: \.landmarkId)
                        {
                            landmarks in
                            NavigationLink(destination: PlanetDetailView(landmark: landmarks))
                            {
                               LandmarkRow (landmark: landmarks)
                            }
                        }
                    }
                    
                }
            }
//            List(cities, id:\.self) { planets in
//                NavigationLink(
//                    destination:
//                        PlanetDetailView(selectedPlanets: planets),
//                    label: {
//                    Text(planets)
//                            .font(.system(size: 20,weight: .light,design: .default))
//                })
//
//            }.navigationTitle("Planets")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
