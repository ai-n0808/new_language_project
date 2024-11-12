//
//  ContentView.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient:
                            Gradient(colors: [ .white, .light, .dark]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()            
            VStack{
                TabView {
                    Tab ("Home", systemImage: "homekit") {
                        Home()
                    }
                    Tab ("Tax", systemImage: "yensign.square.fill") {
                        CalculatorView()
                    }
                    Tab ("Tip", systemImage: "dollarsign.square.fill") {
                        tip_calculator()
                    }
                    Tab ("Split", systemImage:"person.2.fill") {
                        BillSplitterView()
                    }
                }
            }
        }
        }
}

#Preview {
    ContentView()
}
