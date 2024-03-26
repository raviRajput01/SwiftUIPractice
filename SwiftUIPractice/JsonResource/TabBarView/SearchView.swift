//
//  SearchView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import SwiftUI

struct SearchView: View {
    @State private var teams = BundleDecoder.decodeIPLTeamsBundleJson()
    @State private var searchBarText: String = String()
    var body: some View {
        VStack
        {
            SearchBarView(searchBarText: $searchBarText)
            
            List
            {
                ForEach(teams.filter({searchBarText.isEmpty ? true : $0.name.contains(searchBarText)}), id: \.id) { team in
                    TeamRow(team: team)
                }
            }
        }
        
//        Text("Search")
//            .font(.system(size: 40, weight: .bold, design: .default))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
