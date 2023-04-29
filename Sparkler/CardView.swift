//
//  CardView.swift
//  Sparkler
//
//  Created by Eric Freitas on 4/28/23.
//

import SwiftUI
import SpriteKit

struct CardView: View {
    var scene: SKScene {
        let scene = SparkScene()
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .clear
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene, options: [.allowsTransparency])
                .ignoresSafeArea()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
