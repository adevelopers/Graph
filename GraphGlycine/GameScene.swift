//
//  GameScene.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import SpriteKit
import GameplayKit



class GameScene: SKScene {
    
    private var label : SKLabelNode?
    
    var sceneModel = SceneModel()
    
    override func didMove(to view: SKView) {
        addFormulaLabel()
        addDefaultMolecule()
    }
    
    func addDefaultMolecule() {
    
        let C1 = SceneModel.createDefaultAtom()
        let C2 = SceneModel.createDefaultAtom()
        let bondNode = BondNode(C1, C2)
        C1.movingLeft(100)
        C2.movingRight(100)
        
        addChild(bondNode)
        addChild(C1)
        addChild(C2)
        
        
        bondNode.updateBond()
        
        
        
    }
    
    func addDefaultAtom() {
        addChild(SceneModel.createDefaultAtom())
    }
    
    func addFormulaLabel() {
        let formulaLabel = SKLabelNode(text: sceneModel.clearedFormula)
        formulaLabel.color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        formulaLabel.fontName = "Arial"
        formulaLabel.fontSize = 30
        formulaLabel.movingUp(150)
        
        addChild(formulaLabel)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {

    }
    
    
    override func update(_ currentTime: TimeInterval) {
    
    }
}




extension SKLabelNode {
    
    func movingUp(_ value: CGFloat ) {
        self.position.y += value
    }
    
}

extension AtomNode {
    func movingUp(_ value: CGFloat ) {
        self.position.y += value
    }
    
    func movingDown(_ value: CGFloat ) {
        self.position.y -= value
    }
    
    func movingLeft(_ value: CGFloat ) {
        self.position.x -= value
    }
    
    func movingRight(_ value: CGFloat ) {
        self.position.x += value
    }
    
}
