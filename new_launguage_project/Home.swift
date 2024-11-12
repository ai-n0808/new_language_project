//
//  Home.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/11.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient:
                            Gradient(colors: [ .white, .light, .dark]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Text("Welcome to your calculator")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Image(systemName: "figure.gymnastics")
                    .font(.system(size: 80))
                    .padding(.top)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Home()
}

