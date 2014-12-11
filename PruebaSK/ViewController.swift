//
//  ViewController.swift
//  PruebaSK
//
//  Created by Berganza on 10/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import UIKit
import SpriteKit


class ViewController: UIViewController {
    
    var escena: EscenaPrincipal!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let vista = view as SKView
        
        escena = EscenaPrincipal(size: vista.bounds.size)
        escena.scaleMode = .AspectFill
        
        vista.presentScene(escena)
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}

