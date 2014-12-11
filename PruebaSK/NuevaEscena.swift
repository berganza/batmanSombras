//
//  NuevaEscena.swift
//  PruebaSK
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

class NuevaEscena: SKScene {
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
     override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor.redColor()
        
        
        
        let labelDeVuelta = SKLabelNode(fontNamed: "Avenir")
        labelDeVuelta.text = "Espera 3 segundos"
        labelDeVuelta.fontSize = 30
        labelDeVuelta.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(labelDeVuelta)
        
        
        
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock() {
                
                let aparecer = SKTransition.flipHorizontalWithDuration(1)
                let pantalla = EscenaPrincipal(size: self.size)
                self.view?.presentScene(pantalla, transition: aparecer)
            }
            
            ]))
        
        
    }
}