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
        self.init()
        begin = a
        end = b
        self.fillColor = .white
        self.strokeColor = .white
        self.lineWidth = 6
        self.updateBond()
    }
    
    func updateBond() {
            guard
                let a = begin,
                let b = end
                else {
                    return
            }
            
            let linePath = CGMutablePath()
            linePath.move(to: b.position)
            linePath.addLine(to: a.position)
            linePath.closeSubpath()
            self.path = linePath

    }
    
}
