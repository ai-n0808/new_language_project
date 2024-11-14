//
//  Note.swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/13.
//

import SwiftUI

struct Debt: Identifiable {
    let id = UUID()
    var name: String
    var amount: Double
    var isOwedToYou: Bool
}

class DebtViewModel: ObservableObject {
    @Published var debts: [Debt] = []
    
    func addDebt(name: String, amount: Double, isOwedToYou: Bool) {
        let newDebt = Debt(name: name, amount: amount, isOwedToYou: isOwedToYou)
        debts.append(newDebt)
    }
    
    func removeDebt(at offsets: IndexSet) {
        debts.remove(atOffsets: offsets)
    }
}

struct DebtTrackerView: View {
    @StateObject private var viewModel = DebtViewModel()
    @State private var name = ""
    @State private var amount = ""
    @State private var isOwedToYou = true
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient:
                                Gradient(colors: [ .white, .light, .dark]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Form {
                    Section(header: Text("Add a New Debt")) {
                        TextField("Name", text: $name)
                        TextField("Amount", text: $amount)
                            .keyboardType(.decimalPad)
                        Toggle("Owed to Me", isOn: $isOwedToYou)
                        
                        Button("Add") {
                            if let debtAmount = Double(amount) {
                                viewModel.addDebt(name: name, amount: debtAmount, isOwedToYou: isOwedToYou)
                                name = ""
                                amount = ""
                            }
                        }
                    }
                }
                
                .scrollContentBackground(.hidden)

                
                List {
                    ForEach(viewModel.debts) { debt in
                        HStack {
                            Text(debt.name)
                            Spacer()
                            Text("$\(debt.amount, specifier: "%.2f")")
                                .foregroundColor(debt.isOwedToYou ? .green : .red)
                        }
                    }
                    .onDelete(perform: viewModel.removeDebt)
                }
                .scrollContentBackground(.hidden)

            }
            .navigationTitle("Tracker")
            .toolbar {
                EditButton()
            }

          }
        }
    }
}

#Preview {
    DebtTrackerView()
}
