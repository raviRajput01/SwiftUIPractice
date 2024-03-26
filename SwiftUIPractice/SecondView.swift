//
//  SecondView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 20/03/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "music.png")
                .resizable()
                .frame(width: 300,height: 300,alignment: .topLeading)
                .cornerRadius(15.0)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
