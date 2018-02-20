//
//  GameScene.swift
//  Sample Game 1
//
//  Created by Richard Pride IV on 2/18/18.
//  Copyright © 2018 Richard Pride IV. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit

class GameScene: SKScene {
  
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "bg")
        background.size = self.size
        background.position = CGPoint(x: -0.472, y: 0)
        background.zPosition = 0
        self.addChild(background)
        
        let player = SKSpriteNode(imageNamed: "player")
        player.setScale(1)
        player.position = CGPoint(x: -293.0, y: -320.0)
        player.zPosition = 1
        self.addChild(player)
        
        
        func fireBullet(){
            let bullet = SKSpriteNode(imageNamed: "bullet")
            bullet.setScale(1)
            bullet.position = player.position
            bullet.zPosition = 1
            self.addChild(bullet)
            
            let moveBullet = SKAction.moveTo(y: self.size.height + bullet.size.height, duration: 1)
            let deleteBullet = SKAction.removeFromParent()
            let bulletSequence = SKAction.sequence([moveBullet, deleteBullet])
            bullet.run(bulletSequence)
        }
        
        
        
             func touchesBegan(touches: Set<UITouch>, with event: UIEvent?) {
                if let touch = touches.first {
                    fireBullet()
                 
                    
                }
                
                func touchesMoved(touches: Set<UITouch>, with: UIEvent?){
                    for touch: AnyObject in touches{
                        let pointOfTouch = touch.location(in: self)
                        let previousPointOfTouch = touch.previousLocation(in: self)
                        let amountDragged = pointOfTouch.x - previousPointOfTouch.x
                        player.position.x += amountDragged
}
}
}
}
}
