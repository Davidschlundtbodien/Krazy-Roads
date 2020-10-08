//
//  GameViewController.swift
//  Krazy Roads
//
//  Created by David Schlundt-Bodien on 10/8/20.
//  Copyright © 2020 David Schlundt-Bodien. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var scene: SCNScene!
    var sceneView: SCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        
    }
    
    func setupScene() {
        sceneView = view as? SCNView
        scene = SCNScene()
        
        sceneView.scene = scene
    }
}
