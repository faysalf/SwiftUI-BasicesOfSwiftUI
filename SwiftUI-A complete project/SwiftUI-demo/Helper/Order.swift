//
//  Order.swift
//  SwiftUI-demo
//
//  Created by Md. Faysal Ahmed on 1/4/23.
//

import SwiftUI

class Order: ObservableObject {  //It's notify when it's value have changed to whereever @EnvironmentObject used - ObservableObject
    @Published var items = [MenuItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
     
}
