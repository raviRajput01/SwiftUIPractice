//
//  TeamRow.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import SwiftUI

struct TeamRow: View {
    var team: Teams
    var body: some View {
        HStack(spacing: 20)
        {
         
            Image(team.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60,alignment: .center)
            VStack (alignment: .leading)
            {
                
                Text(team.name)
                    .font(.title)
                    .lineLimit(1)
                if (team.winners.isEmpty == false) {
                    HStack(alignment: .top)
                    {
                        Image("trophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text(team.winners)
                            .foregroundColor(Color.yellow)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .lineLimit(1)
                    }.padding()
                        .background(Capsule()
                            .fill(Color.black))
                        .opacity(0.7)
                        .overlay(Capsule()
                            .stroke(Color.black, lineWidth: 1))
                }
            }
            Spacer()
        }.padding()
    }
}

struct TeamRow_Previews: PreviewProvider {
    static var previews: some View {
        TeamRow(team: Teams(id: 1, name: "Chennai Super Kings", winners: "2012,2013,2014", icon: "csk"))
            .previewLayout(.fixed(width: 500, height: 150))
    }
}
