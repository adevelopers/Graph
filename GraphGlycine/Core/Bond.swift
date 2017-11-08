//
//  Bond.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation

/// Edge
class Bond {
    
    var begin: Atom
    var end: Atom
    
    init(_ a: Atom,_ b: Atom) {
        begin = a
        end = b 
    }
}
