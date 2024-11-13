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
                    Tab ("Calculator", systemImage: "list.clipboard.fill") {
                        CalculatorView()
                    }
                    Tab ("Split", systemImage:"person.2.fill") {
                        BillSplitterView()
                    }
                    Tab ("Talk", systemImage: "waveform.circle.fill") {
                        
                    }
                }
            }
        }
        }
}

#Preview {
    ContentView()
}
