//
//  EscenaPrincipal.swift
//  PruebaSK
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

class EscenaPrincipal: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        
        let fondo = SKSpriteNode(imageNamed: "fondo2", normalMapped: true)
        fondo.size = self.size
        fondo.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)
        fondo.zPosition = 0
        fondo.lightingBitMask = 500
        addChild(fondo)
        
        
        
        var batman2 = SKSpriteNode(imageNamed: "batman2")
        batman2.position = CGPointMake(400, self.frame.size.height/2 - 80)
        batman2.setScale(0.5)
        batman2.zPosition = 1
        batman2.shadowCastBitMask = 3
        addChild(batman2)

        

        var emitterPath:NSString = NSBundle.mainBundle().pathForResource("fire", ofType: "sks")!
        var emitter = NSKeyedUnarchiver.unarchiveObjectWithFile(emitterPath) as SKEmitterNode
        emitter.position = CGPointMake(self.frame.size.width/2 - 200, self.frame.size.height/2 - 100)
        emitter.name = "emitter"
        emitter.zPosition = 2
        emitter.targetNode = self
        addChild(emitter)
        
        
        
        var luz = SKLightNode()
        luz.categoryBitMask = 10
        luz.falloff = 10
        luz.ambientColor = UIColor.whiteColor()
        luz.lightColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6)
        luz.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        emitter.addChild(luz)
        
 
    }
    
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        
        for toke in touches {
            
            var location:CGPoint = toke.locationInNode(self)
            self.childNodeWithName("emitter")?.position = CGPointMake(location.x, location.y)
            
        }
    }
}









