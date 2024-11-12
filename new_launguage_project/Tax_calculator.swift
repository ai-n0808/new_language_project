//
//  Tax_calculator.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/12.
//

import SwiftUI

struct TaxCalculator: View {
    @Binding var total: String
    @Binding var percentage: Double
    
    var body: some View {
        VStack {
            Text("Tax Calculator")
                .font(.title)
                .fontWeight(.bold)
            
            HStack {
                Text("¥")
                TextField("Amount", text: $total)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            HStack {
                Slider(value: $percentage, in: 1...30, step: 1.0)
                Text("\(Int(percentage))%")
            }
            .padding()
            
            if let totalNumber = Double(total) {
                Text("Tax: ¥\(totalNumber * percentage / 100, specifier: "%.2f")")
                    .font(.title2)
                    .padding()
            } else {
                Text("Please enter a valid amount")
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
}
