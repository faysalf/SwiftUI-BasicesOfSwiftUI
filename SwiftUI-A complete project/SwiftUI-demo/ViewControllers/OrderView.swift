//
//  OrderView.swift
//  SwiftUI-demo
//
//  Created by Reserveit Support on 2/4/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order //For receiving shared data elsewhere in app
    @State private var totalPrice = 0
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("Tk \(item.price)").onChange(of: item.price) { val in
                                totalPrice += item.price
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
                Section {
                    NavigationLink("Place Order") { CheckoutView()
                    }
                }
                .disabled(order.items.isEmpty)
            }
            .navigationTitle("Order")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }

        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            OrderView()
                .environmentObject(Order())
        }
    }
}
