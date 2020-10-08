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
    var cameraNode = SCNNode()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        setupFloor()
        setupCamera()
    }
    
    func setupScene() {
        sceneView = view as? SCNView
        scene = SCNScene()
        
        sceneView.scene = scene
    }
    
    func setupFloor() {
        let floor = SCNFloor()
        floor.firstMaterial?.diffuse.contents = UIColor.green
        floor.reflectivity = 0.0
        
        let floorNode = SCNNode(geometry: floor)
        scene.rootNode.addChildNode(floorNode)
    }
    
    
    func setupCamera() {
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 10, z: 0)
        cameraNode.eulerAngles = SCNVector3(x: -.pi/2, y: 0, z: 0)
        scene.rootNode.addChildNode(cameraNode)
    }
    
    
}
