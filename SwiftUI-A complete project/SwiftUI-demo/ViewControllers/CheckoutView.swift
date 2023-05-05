//
//  CheckoutView.swift
//  SwiftUI-demo
//
//  Created by Reserveit Support on 3/4/23.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15
    @State private var isPresentingAlert = false
    
    var totalPrice: String {   //@State var - if access .onAppear
        let total = Double(order.total)
        let tips = (total * Double(tipAmount)) / 100
        return (total + tips).formatted()
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("How do you want to pay?", selection: $paymentType) {
                        ForEach(paymentTypes, id: \.self) {
                            Text($0)
                        }
                    }
                    .listRowSeparator(.automatic)
                    
                    Toggle("Add yourDine loyalty card", isOn: $addLoyaltyDetails.animation())
                    
                    if addLoyaltyDetails {
                        TextField("Enter your yourDine ID", text: $loyaltyNumber)
                    }
                    
                }
                // total price can update it also
//                .onAppear {
//                    for order in order.items {
//                        totalPrice += order.price
//                    }
//                }
                Section("Want to add a tip?") {
                    Picker("Percentage:", selection: $tipAmount) {
                        ForEach(tipAmounts, id: \.self) {
                            Text("\($0)%")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Total: Tk \(totalPrice)") {
                    Button("Confirm Order") {
                        isPresentingAlert.toggle()
                    }
                }
                
            }
            
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order Confirmed!", isPresented: $isPresentingAlert) {
            // add buttons here
        } message: {
            Text("Your total is \(totalPrice). Thanks for your reservation!")
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CheckoutView()
                .environmentObject(Order())
        }
    }
}
