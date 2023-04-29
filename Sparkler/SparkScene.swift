//
//  SpriteScene.swift
//  Sparkler
//
//  Created by Eric Freitas on 4/25/23.
//

import SpriteKit

class SparkScene: SKScene {

    let snowEmitterNode = SKEmitterNode(fileNamed: "Sparky.sks")

    override func didMove(to view: SKView) {
        guard let sparkleNode = snowEmitterNode else { return }
        sparkleNode.particleSize = CGSize(width: 30, height: 30)
        sparkleNode.particleLifetime = 5
        sparkleNode.particleLifetimeRange = 10
        addChild(sparkleNode)
    }

    override func didChangeSize(_ oldSize: CGSize) {
        guard let sparkleNode = snowEmitterNode else { return }
        sparkleNode.particlePosition = CGPoint(x: size.width/2, y: size.height)
        sparkleNode.particlePositionRange = CGVector(dx: size.width, dy: size.height * 2)
    }
}
