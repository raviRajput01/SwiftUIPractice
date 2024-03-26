//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = String()
    @State private var pasword: String = String()
    var body: some View {
        VStack {
            Text("Welcome to Swift UI").font(.largeTitle).padding()
            Text("Nothing to do better then something").font(.subheadline)
            
            TextField("UserName", text: $userName)
                .padding()
                .background(Color.gray)
                .cornerRadius(4.0)
               
            SecureField("Password", text: $pasword)
                .padding()
                .background(Color.gray)
                .cornerRadius(4.0)
            HStack {
                
                Button(action: {
                    debugPrint("Login Button Tap")
                }, label: {
                    Text("Login")
                })
                
                Spacer()
                
                Button(action: {
                    debugPrint("Login Button Tap")
                }, label: {
                    Text("Forgot Password")
                })
            }.padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
