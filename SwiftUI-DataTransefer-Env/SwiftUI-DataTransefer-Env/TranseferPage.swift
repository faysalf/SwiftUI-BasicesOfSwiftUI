//
//  TranseferPage.swift
//  SwiftUI-DataTransefer-Env
//
//  Created by Md. Faysal Ahmed on 9/4/23.
//

import SwiftUI

class TranseferPage: ObservableObject {
    
    @Published var arr = [1, 2, 3, 4, 5]
    @State private var total = 0
    
    var totalCount: Int {
        return arr.count
    }
    
    func addData(val: Int) {
        arr.append(val)
    }
    
    func deleteData(val: Int) {
        if let index = arr.firstIndex(of: val) {
            arr.remove(at: index)
        }
    }
    
    
}

