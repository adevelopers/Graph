//
//  Atom.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation

struct Element {
    
    var symbol: String
    
}

class Atom {
    
    var element: Element!
    var valence: Int = 0
    
    init(_ symbol: String, _ valence: Int = 0) {
        element = Element(symbol: symbol)
        self.valence = valence
    }
    
}
