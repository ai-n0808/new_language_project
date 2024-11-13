//
//  View.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/12.
//

import SwiftUI

struct CalculatorView: View {
    @State private var total: String = ""
    @State private var percentage: Double = 15.0
    @State private var isTaxCalculator: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                            Gradient(colors: [ .white, .light, .dark]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                if isTaxCalculator {
                    TaxCalculator(total: $total, percentage: $percentage)
                } else {
                    tip_calculator()
                }
                Spacer()
                Toggle(isOn: $isTaxCalculator) {
                    Text("Switch to \(isTaxCalculator ? "Tip" : "Tax") Calculator")
                }
                .padding()
                .tint(.myblue)

            }
            .padding()
        }
    }
}

#Preview {
    CalculatorView()
}
