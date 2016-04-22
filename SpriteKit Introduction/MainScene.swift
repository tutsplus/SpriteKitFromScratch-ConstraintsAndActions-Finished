//
//  MainScene.swift
//  SpriteKit Introduction
//
//  Created by Davis Allie on 22/04/16.
//  Copyright © 2016 tutsplus. All rights reserved.
//

import UIKit
import SpriteKit

class MainScene: SKScene {

    var player: PlayerNode!

    override func didMoveToView(view: SKView) {
        super.didMoveToView(view)

        size = view.frame.size

        if let foundPlayer = childNodeWithName("Player") as? PlayerNode {
            player = foundPlayer
        }

        let center = size.width/2.0, difference = CGFloat(70.0)

        player.leftConstraint = SKConstraint.positionX(SKRange(constantValue: center - difference))
        player.middleConstraint = SKConstraint.positionX(SKRange(constantValue: center))
        player.rightConstraint = SKConstraint.positionX(SKRange(constantValue: center + difference))

        player.leftConstraint.enabled = false
        player.rightConstraint.enabled = false

        player.constraints = [player.leftConstraint, player.middleConstraint, player.rightConstraint]
    }

}
