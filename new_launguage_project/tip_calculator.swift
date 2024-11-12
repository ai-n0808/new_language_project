//
//  tip calculator.swift
//  Tip Calculator
//
//  Created by Ai on 2024/11/11.
//

import SwiftUI

struct tip_calculator: View {
    @State var total: String = ""
    @State var percentage: Double = 15.0
    var body: some View {
        ZStack{
             LinearGradient(gradient:
                                Gradient(colors: [ .white, .light, .dark]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            VStack {
                HStack{
                    Image(systemName: "dollarsign.circle")
                        .imageScale(.large)
                        .foregroundStyle(.myblue)
                        .font(.title)
                    Text("Tip Calculator")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Image(systemName: "dollarsign.circle")
                        .imageScale(.large)
                        .foregroundStyle(.myblue)
                        .font(.title)
                }
                
                HStack{
                    Text("$")
                    TextField("Amount", text: $total)
                    Text(total)
                }
                HStack{
                    Slider(value: $percentage, in: 1...30, step: 1.0)
                    Text("\(Int(percentage))")
                    Text("%")
                }
                
                
                if let totalNumber = Double(total){
                    Text("Tip: $\(totalNumber * percentage / 100, specifier: "%0.2f")")
                } else {
                    Text("Please type your cost")
                }
            }
            .padding()
        }
    }
}


#Preview {
    tip_calculator()
}
