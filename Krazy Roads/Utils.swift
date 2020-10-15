//
//  Utils.swift
//  Krazy Roads
//
//  Created by David Schlundt-Bodien on 10/9/20.
//  Copyright © 2020 David Schlundt-Bodien. All rights reserved.
//

import Foundation
import SceneKit

struct Models {
    private static let treeScene = SCNScene(named: "art.scnassets/Tree.scn")!
    static let tree = treeScene.rootNode.childNode(withName: "tree", recursively: true)!
    
    private static let hedgeScene = SCNScene(named: "art.scnassets/Hedge.scn")!
    static let hedge = hedgeScene.rootNode.childNode(withName: "hedge", recursively: true)!
    
    private static let carScene = SCNScene(named: "art.scnassets/PurpleCar.scn")!
    static let car = carScene.rootNode.childNode(withName: "car", recursively: true)!
    
    private static let blueTruckScene = SCNScene(named: "art.scnassets/BlueTruck.scn")!
    static let blueTruck = blueTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
    
    private static let firetruckScene = SCNScene(named: "art.scnassets/Firetruck.scn")!
    static let firetruck = firetruckScene.rootNode.childNode(withName: "truck", recursively: true)!
    
}

let degreesPerRadians = Float(Double.pi/180)
let radiansPerDegrees = Float(180/Double.pi)

func toRadians(angle: Float) -> Float {
    return angle * degreesPerRadians
}

func toRadians(angle: CGFloat) -> CGFloat {
    return angle * CGFloat(degreesPerRadians)
}

func randomBool(odds: Int) -> Bool {
    let random = arc4random_uniform(UInt32(odds))
    if random < 1 {
        return true
    } else {
        return false
    }
}
