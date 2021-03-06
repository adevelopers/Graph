//
//  GameScene.swift
//  GraphGlycine
//
//  Created by Kirill Khudyakov on 08.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import SpriteKit
import GameplayKit

class SceneModel {
    var smilesFormula: String = "C(C(=O)O)N"
    var clearedFormula: String = "CCOON"
    
}

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    
    var sceneModel = SceneModel()
    
    override func didMove(to view: SKView) {
     
        let formulaLabel = SKLabelNode(text: sceneModel.clearedFormula)
        formulaLabel.color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        formulaLabel.fontName = "Arial"
        formulaLabel.fontSize = 30
        
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
