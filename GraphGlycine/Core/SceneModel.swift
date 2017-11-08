//
//  SceneModel.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import SpriteKit

class SceneModel {
    var smilesFormula: String = "C(C(=O)O)N"
    var clearedFormula: String = "CCOON"
    
    class func createDefaultAtom() -> AtomNode {   
        return AtomNode(atom: Atom("C", 4))
    }
}
