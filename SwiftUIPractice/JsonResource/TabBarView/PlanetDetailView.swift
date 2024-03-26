//
//  PlanetDetailView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import SwiftUI

struct PlanetDetailView: View {
    //var selectedPlanets: String
    var landmark: Landmark
    var body: some View {
       // Text("\(selectedPlanets) details view")
         //   .font(.title)
        VStack
            {
                Image(landmark.photo)
                .resizable()
                .scaledToFit()

                Text(landmark.description)

                Spacer()
        }.padding()
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailView(landmark: Landmark(landmarkId: 1, name: "test", photo: "goi", description: "test description"))
    }
}
