//
//  GameViewController.swift
//  AA2
//
//  Created by Alumne on 9/6/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // swiftlint:disable force_cast
        if let view = self.view as! SKView? {
            if let scene = GameScene(fileNamed: "GameScene") {
                // Fits better on iPad and Mac this way
                scene.scaleMode = .aspectFit

                view.presentScene(scene)
            }

            #if DEBUG

            #endif
        }
        // swiftlint:enable force_cast

    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
