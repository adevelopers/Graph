//
//  AtomNode.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import SpriteKit


class AtomNode: SKShapeNode {
    
    var atom: Atom?
    
    var labelSymbol: SKLabelNode!
    
    convenience init(atom: Atom) {
        self.init()
        self.init(circleOfRadius: 50)
        self.atom = atom
        
        self.fillColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        labelSymbol = SKLabelNode(fontNamed: "Arial")
        labelSymbol.fontSize = 25
        labelSymbol.text = atom.element.symbol
        labelSymbol.verticalAlignmentMode = .center
        addChild(labelSymbol)
        
    }
    
}
