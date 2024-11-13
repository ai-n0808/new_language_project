//
//  Sprit_bill.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/11.
//

import SwiftUI

struct BillSplitterView: View {
    @State var billAmount: String = ""
    @State var numberOfPeople = 1
    
    var amountPerPerson: Double {
        let bill = Double(billAmount) ?? 0
        let peopleCount = Double(numberOfPeople + 1)
        return peopleCount > 0 ? bill / peopleCount : 0
    }

    var body: some View {
        ZStack{
             LinearGradient(gradient:
                                Gradient(colors: [ .white, .light, .dark]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            VStack {
                Text("Let's split bill with your friend!!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("How many people?")
                    .font(.title)
                    .padding(.top, 100)
                
                Picker("People", selection: $numberOfPeople) {
                    ForEach(1..<11)
                    { index in
                        Text("\(index) People")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                Spacer()

                TextField("Type your bill amount", text: $billAmount)
                    .padding(.horizontal)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                Spacer()
                
                
                Text("Per person: $\(amountPerPerson, specifier: "%.2f")")
                    .fontWeight(.bold)
                    .padding()
                    .font(.system(size: 30))
                Spacer()
            }

        }
    }
}

struct BillSplitterView_Previews: PreviewProvider {
    static var previews: some View {
        BillSplitterView()
    }
}

