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
                    Tab ("Tip", systemImage: "doc.plaintext") {
                        tip_calculator()
                    }
                    Tab ("Split", systemImage:"person.2.fill") {
                        BillSplitterView()
                    }
                    Tab ("Reciept", systemImage: "paperclip.circle.fill") {
                        Reciept_()
                    }
                }
            }
        }
        }
}

#Preview {
    ContentView()
}
