//
//  BondNode.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import SpriteKit

class BondNode: SKShapeNode {
 
    var begin: AtomNode!
    var end: AtomNode!
    
    convenience init(_ a: AtomNode, _ b: AtomNode) {
        begin = a
        end = b
    }
    
}
